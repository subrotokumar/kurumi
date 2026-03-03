import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/core/utils/parser.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

// ─────────────────────────────────────────────────────────────────────────────
// PREPROCESSOR
// ─────────────────────────────────────────────────────────────────────────────

class _AniListPreprocessor {
  static final _unescape = HtmlUnescape();

  static String process(String input) {
    input = _unescape.convert(input);
    input = _decodeNumericEntities(input);

    input = input.replaceAllMapped(
      RegExp(r'<center\s*/?>', caseSensitive: false),
      (_) => '',
    );
    input = input.replaceAllMapped(
      RegExp(r'</center>', caseSensitive: false),
      (_) => '',
    );
    input = input.replaceAllMapped(
      RegExp(r'<br\s*/?>', caseSensitive: false),
      (_) => '\n',
    );
    input = input.replaceAllMapped(
      RegExp(r'<hr\s*/?>', caseSensitive: false),
      (_) => '\n---\n',
    );
    input = input.replaceAllMapped(
      RegExp(r'<h([1-5])[^>]*>(.*?)</h\1>', caseSensitive: false, dotAll: true),
      (m) => '${'#' * int.parse(m.group(1)!)} ${m.group(2)!.trim()}\n',
    );
    input = input.replaceAllMapped(
      RegExp(r'<a[^>]*>', caseSensitive: false),
      (_) => '',
    );
    input = input.replaceAllMapped(
      RegExp(r'</a>', caseSensitive: false),
      (_) => '',
    );

    // Spoiler divs → ~!text!~
    input = input.replaceAllMapped(
      RegExp(
        r'<div[^>]*rel=["\x27]?spoiler["\x27]?[^>]*>(.*?)</div>',
        caseSensitive: false,
        dotAll: true,
      ),
      (m) => '~!${m.group(1)!}!~',
    );

    // <blockquote> → > prefixed lines
    input = input.replaceAllMapped(
      RegExp(
        r'<blockquote>(.*?)</blockquote>',
        caseSensitive: false,
        dotAll: true,
      ),
      (m) =>
          '${m.group(1)!.trim().split('\n').map((l) => '> $l').join('\n')}\n',
    );

    input = _expandHtmlInline(input);

    // img###%(url) → percentage width  (encoded as __w=###p)
    input = input.replaceAllMapped(
      RegExp(r'\bimg\s*(\d+)%\s*\(([^)]+)\)', caseSensitive: false),
      (m) => '![](${m.group(2)!.trim()}?__w=${m.group(1)!}p)',
    );
    // img###(url) → pixel width  (encoded as __w=###)
    input = input.replaceAllMapped(
      RegExp(r'\bimg\s*(\d+)\s*\(([^)]+)\)', caseSensitive: false),
      (m) => '![](${m.group(2)!.trim()}?__w=${m.group(1)!})',
    );
    // plain img(url)
    input = input.replaceAllMapped(
      RegExp(r'\bimg\s*\(([^)]+)\)', caseSensitive: false),
      (m) => '![](${m.group(1)!.trim()})',
    );

    // webm(url) → bare URL
    input = input.replaceAllMapped(
      RegExp(r'\bwebm\s*\(([^)]+)\)', caseSensitive: false),
      (m) => m.group(1)!.trim(),
    );

    // youtube(url) → bare URL
    input = input.replaceAllMapped(
      RegExp(r'\byoutube\s*\(([^)]+)\)', caseSensitive: false),
      (m) => m.group(1)!.trim(),
    );

    // ~~~ blocks → fenced code blocks
    input = input.replaceAllMapped(
      RegExp(r'~~~(.*?)~~~', dotAll: true),
      (m) => '```\n${m.group(1)!.trim()}\n```',
    );

    return input;
  }

  static String _decodeNumericEntities(String text) {
    return text
        .replaceAllMapped(
          RegExp(r'&#(\d+);'),
          (m) => String.fromCharCode(int.parse(m.group(1)!)),
        )
        .replaceAllMapped(
          RegExp(r'&#x([0-9a-fA-F]+);'),
          (m) => String.fromCharCode(int.parse(m.group(1)!, radix: 16)),
        );
  }

  static String _expandHtmlInline(String text) {
    return text
        .replaceAllMapped(
          RegExp(r'<(i|em)>(.*?)</(i|em)>', caseSensitive: false, dotAll: true),
          (m) => '_${m.group(2)}_',
        )
        .replaceAllMapped(
          RegExp(
            r'<(b|strong)>(.*?)</(b|strong)>',
            caseSensitive: false,
            dotAll: true,
          ),
          (m) => '**${m.group(2)}**',
        )
        .replaceAllMapped(
          RegExp(
            r'<(del|strike)>(.*?)</(del|strike)>',
            caseSensitive: false,
            dotAll: true,
          ),
          (m) => '~~${m.group(2)}~~',
        )
        .replaceAllMapped(
          RegExp(r'<code>(.*?)</code>', caseSensitive: false, dotAll: true),
          (m) => '`${m.group(1)}`',
        );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SPOILER INLINE SYNTAX  ~!text!~
// ─────────────────────────────────────────────────────────────────────────────

class _SpoilerSyntax extends md.InlineSyntax {
  _SpoilerSyntax() : super(r'~!([\s\S]*?)!~');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final innerRaw = match.group(1) ?? '';
    final el = md.Element('spoiler', [md.UnparsedContent(innerRaw)])
      ..attributes['data-text'] = innerRaw;
    parser.addNode(el);
    return true;
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SPOILER BUILDER
// ─────────────────────────────────────────────────────────────────────────────

class _SpoilerBuilder extends MarkdownElementBuilder {
  @override
  Widget? visitElementAfterWithContext(
    BuildContext context,
    md.Element element,
    TextStyle? preferredStyle,
    TextStyle? parentStyle,
  ) {
    final rawText = element.attributes['data-text'] ?? _collectText(element);
    return _SpoilerWidget(text: rawText);
  }

  String _collectText(md.Node node) {
    if (node is md.Text) return node.text;
    if (node is md.UnparsedContent) return node.textContent;
    if (node is md.Element) {
      return (node.children ?? []).map(_collectText).join();
    }
    return '';
  }
}

class _SpoilerWidget extends StatefulWidget {
  final String text;
  const _SpoilerWidget({required this.text});

  @override
  State<_SpoilerWidget> createState() => _SpoilerWidgetState();
}

class _SpoilerWidgetState extends State<_SpoilerWidget> {
  bool _revealed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _revealed = !_revealed),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _revealed ? Colors.transparent : Colors.white24,
          borderRadius: BorderRadius.circular(3),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Text(
          widget.text,
          style: Poppins(
            fontSize: 15,
            color: _revealed ? Colors.white70 : Colors.transparent,
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// IMAGE BUILDER
// ─────────────────────────────────────────────────────────────────────────────

Widget _buildAniListImage(Uri uri, String? title, String? alt) {
  final rawUrl = uri.toString();

  // YouTube thumbnail
  final ytMatch = RegExp(
    r'(?:youtube\.com/(?:watch\?v=|shorts/)|youtu\.be/)([a-zA-Z0-9_-]{11})',
  ).firstMatch(rawUrl);
  if (ytMatch != null) {
    final videoId = ytMatch.group(1)!;
    final thumbnail = 'https://img.youtube.com/vi/$videoId/hqdefault.jpg';
    return GestureDetector(
      onTap: () =>
          launchUrl(Uri.parse(rawUrl), mode: LaunchMode.externalApplication),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: _cachedImage(thumbnail, null),
          ),
          const Icon(Icons.play_circle_fill, color: Colors.white, size: 64),
        ],
      ),
    );
  }

  // Parse optional width from injected __w query param
  // 'p' suffix = percent, no suffix = pixels
  double? width;
  bool isPercent = false;
  String cleanUrl = rawUrl;

  if (uri.queryParameters.containsKey('__w')) {
    final ws = uri.queryParameters['__w']!;
    isPercent = ws.endsWith('p');
    width = double.tryParse(ws.replaceAll(RegExp(r'[^\d.]'), ''));
    final remaining = Map.fromEntries(
      uri.queryParameters.entries.where((e) => e.key != '__w'),
    );
    cleanUrl = uri.replace(queryParameters: remaining).toString();
    if (remaining.isEmpty) cleanUrl = cleanUrl.replaceAll(RegExp(r'\?$'), '');
  }

  return Builder(
    builder: (context) {
      final resolvedWidth = width == null
          ? null
          : isPercent
          ? MediaQuery.of(context).size.width * (width / 100)
          : width;
      return _cachedImage(cleanUrl, resolvedWidth);
    },
  );
}

Widget _cachedImage(String url, double? width) {
  return ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(8),
    child: CachedNetworkImage(
      imageUrl: url,
      width: width,
      fit: BoxFit.contain,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.white24,
        highlightColor: Colors.black12,
        child: Container(width: width ?? 200, height: 150, color: Colors.grey),
      ),
      errorWidget: (context, url, error) => Container(
        width: width ?? 100,
        height: 80,
        alignment: Alignment.center,
        color: Colors.black26,
        child: const Icon(
          PhosphorIconsFill.imageBroken,
          color: Colors.white54,
          size: 32,
        ),
      ),
    ),
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// STYLE SHEET
// ─────────────────────────────────────────────────────────────────────────────

MarkdownStyleSheet _buildStyleSheet() {
  final body = Poppins(
    // fontFamily: 'Poppins',
    fontSize: 15,
    color: Colors.white70,
  );

  return MarkdownStyleSheet(
    p: body,
    a: body.copyWith(
      color: Colors.blue,
      decoration: TextDecoration.underline,
      fontSize: 14,
    ),
    strong: body.copyWith(fontWeight: FontWeight.bold),
    em: body.copyWith(fontStyle: FontStyle.italic),
    del: body.copyWith(decoration: TextDecoration.lineThrough),
    code: body.copyWith(
      fontSize: 13,
      backgroundColor: const Color(0x44FFFFFF),
      color: Colors.white,
    ),
    codeblockDecoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.05),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.white12),
    ),
    codeblockPadding: const EdgeInsets.all(12),
    blockquoteDecoration: const BoxDecoration(
      border: Border(left: BorderSide(color: Colors.white38, width: 3)),
    ),
    blockquotePadding: const EdgeInsets.only(left: 12, top: 4, bottom: 4),
    blockquote: body,
    h1: body.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    h2: body.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    h3: body.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    h4: body.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    h5: body.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    listBullet: body,
    horizontalRuleDecoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.white24, width: 1)),
    ),
    tableBody: body,
    tableHead: body.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
    tableCellsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    tableBorder: TableBorder.all(color: Colors.white24),
  );
}

String normalizeMarkdownSpacing(String input) {
  final patterns = [
    RegExp(r'__\s*([^\n]*?)\s*__'),
    RegExp(r'\*\*\s*([^\n]*?)\s*\*\*'),
    RegExp(r'_\s*([^\n]*?)\s*_'),
    RegExp(r'\*\s*([^\n]*?)\s*\*'),
  ];

  for (final regex in patterns) {
    input = input.replaceAllMapped(regex, (m) {
      final text = m.group(1)!.trim();
      final marker = m.group(0)!.substring(0, m.group(0)!.indexOf(text)).trim();
      return '$marker$text$marker';
    });
  }

  return input;
}

String normalizeHeaders(String input) {
  final regex = RegExp(r'^[ \t]+(#{1,6}\s+)', multiLine: true);

  return input.replaceAllMapped(regex, (m) => m.group(1)!);
}

class AniListRenderer extends StatelessWidget {
  final String content;

  const AniListRenderer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    String processed = anilistToMarkdown(content);
    processed = _AniListPreprocessor.process(processed.replaceAll("~~~", ""));
    processed = normalizeHeaders(processed);
    processed = normalizeMarkdownSpacing(processed);
    return MarkdownBody(
      data: processed,
      selectable: false,
      styleSheet: _buildStyleSheet(),
      extensionSet: md.ExtensionSet(
        md.ExtensionSet.gitHubFlavored.blockSyntaxes,
        [_SpoilerSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
      ),
      builders: {'spoiler': _SpoilerBuilder()},
      imageBuilder: _buildAniListImage,
      onTapLink: (text, href, title) {
        if (href == null) return;
        if (href.startsWith("https://anilist.co/anime/") ||
            href.startsWith("https://anilist.co/manga/") ||
            href.startsWith("https://anilist.co/character")) {
          context.push(href.replaceAll("https://anilist.co", ""));
        } else {
          launchUrl(Uri.parse(href), mode: LaunchMode.externalApplication);
        }
      },
    );
  }
}
