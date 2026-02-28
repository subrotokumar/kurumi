import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:html_unescape/html_unescape.dart';

// ─────────────────────────────────────────────────────────────────────────────
// NODE MODELS
// ─────────────────────────────────────────────────────────────────────────────

abstract class PostNode {}

class TextNode extends PostNode {
  final InlineSpan span;
  TextNode(this.span);
}

class ImageNode extends PostNode {
  final String url;
  final double? width;
  final bool isPercentage;
  ImageNode({required this.url, this.width, this.isPercentage = false});
}

class LinkedImageNode extends PostNode {
  final ImageNode image;
  final String linkUrl;
  LinkedImageNode({required this.image, required this.linkUrl});
}

class InlineImageRowNode extends PostNode {
  final List<PostNode> images;
  InlineImageRowNode(this.images);
}

class VideoNode extends PostNode {
  final String url;
  VideoNode(this.url);
}

class YouTubeNode extends PostNode {
  final String url;
  final String videoId;
  YouTubeNode({required this.url, required this.videoId});
}

class BlockNode extends PostNode {
  final List<PostNode> children;
  BlockNode(this.children);
}

class HeaderNode extends PostNode {
  final List<InlineSpan> spans;
  final int level;
  HeaderNode(this.spans, this.level);
}

class HorizontalRuleNode extends PostNode {}

class BlockquoteNode extends PostNode {
  final List<PostNode> children;
  BlockquoteNode(this.children);
}

class ListNode extends PostNode {
  final bool ordered;
  final List<List<PostNode>> items;
  ListNode({required this.ordered, required this.items});
}

// ─────────────────────────────────────────────────────────────────────────────
// PARSER
// ─────────────────────────────────────────────────────────────────────────────

class AniListParser {
  static final _unescape = HtmlUnescape();

  static final _linkedImgRegex = RegExp(
    "\\[\\s*"
    "(img\\s*(\\d*%?)\\s*\\(([^)]+)\\)|<img\\b[^>]*src=[\"']([^\"']+)[\"'][^>]*>)"
    "\\s*\\]\\s*"
    "\\(([^)]+)\\)",
    caseSensitive: false,
  );

  static final _linkedMdImgRegex = RegExp(
    r'\[!\[([^\]]*)\]\(([^)]+)\)\]\(([^)]+)\)',
  );

  static List<PostNode> parse(String input) {
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
    input = input.replaceAllMapped(
      RegExp(
        '<div[^>]*rel=["\']?spoiler["\']?[^>]*>(.*?)</div>',
        caseSensitive: false,
        dotAll: true,
      ),
      (m) => '~!${m.group(1)!}!~',
    );
    input = input.replaceAllMapped(
      RegExp(
        r'<blockquote>(.*?)</blockquote>',
        caseSensitive: false,
        dotAll: true,
      ),
      (m) =>
          m.group(1)!.trim().split('\n').map((l) => '> $l').join('\n') + '\n',
    );

    final nodes = <PostNode>[];
    final blockRegex = RegExp(r'~~~(.*?)~~~', dotAll: true);
    int currentIndex = 0;

    for (final match in blockRegex.allMatches(input)) {
      if (match.start > currentIndex) {
        nodes.addAll(_parseSegment(input.substring(currentIndex, match.start)));
      }
      nodes.add(BlockNode(_parseSegment(match.group(1)!)));
      currentIndex = match.end;
    }

    if (currentIndex < input.length) {
      nodes.addAll(_parseSegment(input.substring(currentIndex)));
    }

    return nodes;
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

  static List<PostNode> _parseSegment(String input) {
    final nodes = <PostNode>[];
    // Join lines where a markdown link has the URL on a new line: [...](  \n url \n )
    input = input.replaceAllMapped(
      RegExp(r'\[([^\]]*)\]\(\s*\n\s*([^)\n]+)\s*\n?\s*\)'),
      (m) => '[${m.group(1)}](${m.group(2)!.trim()})',
    );
    final lines = input.split('\n');
    int i = 0;

    while (i < lines.length) {
      final raw = lines[i];
      final trimmed = raw.trim();

      if (trimmed.isEmpty) {
        i++;
        continue;
      }

      // Setext-style headers (underline with == or --)
      if (i + 1 < lines.length) {
        final next = lines[i + 1].trim();
        if (RegExp(r'^={2,}$').hasMatch(next)) {
          nodes.add(HeaderNode(_parseInlineSpans(trimmed), 1));
          i += 2;
          continue;
        }
        if (RegExp(r'^-{2,}$').hasMatch(next) &&
            !RegExp(r'^[-*+]\s').hasMatch(trimmed)) {
          nodes.add(HeaderNode(_parseInlineSpans(trimmed), 2));
          i += 2;
          continue;
        }
      }

      // Horizontal rule: ---, ***, - - -, * * *, ___
      if (RegExp(r'^(\s*[-*_]\s*){3,}$').hasMatch(trimmed) &&
          !RegExp(r'^[-*+]\s').hasMatch(trimmed)) {
        nodes.add(HorizontalRuleNode());
        i++;
        continue;
      }

      // ATX header
      final headerMatch = RegExp(r'^(#{1,5})\s+(.+)').firstMatch(trimmed);
      if (headerMatch != null) {
        nodes.add(
          HeaderNode(
            _parseInlineSpans(headerMatch.group(2)!.trim()),
            headerMatch.group(1)!.length,
          ),
        );
        i++;
        continue;
      }

      // Blockquote
      if (trimmed.startsWith('>')) {
        final quoteLines = <String>[];
        while (i < lines.length && lines[i].trim().startsWith('>')) {
          quoteLines.add(lines[i].trim().replaceFirst(RegExp(r'^>\s?'), ''));
          i++;
        }
        nodes.add(BlockquoteNode(_parseSegment(quoteLines.join('\n'))));
        continue;
      }

      // Ordered list
      if (RegExp(r'^\d+\.\s').hasMatch(trimmed)) {
        final items = <List<PostNode>>[];
        while (i < lines.length &&
            RegExp(r'^\d+\.\s').hasMatch(lines[i].trim())) {
          final content = lines[i].trim().replaceFirst(
            RegExp(r'^\d+\.\s+'),
            '',
          );
          items.add(_parseInlineOrMedia(content));
          i++;
        }
        nodes.add(ListNode(ordered: true, items: items));
        continue;
      }

      // Unordered list
      if (RegExp(r'^[-*+]\s').hasMatch(trimmed)) {
        final items = <List<PostNode>>[];
        while (i < lines.length &&
            RegExp(r'^[-*+]\s').hasMatch(lines[i].trim())) {
          final content = lines[i].trim().replaceFirst(
            RegExp(r'^[-*+]\s+'),
            '',
          );
          items.add(_parseInlineOrMedia(content));
          i++;
        }
        nodes.add(ListNode(ordered: false, items: items));
        continue;
      }

      // Inline / media line
      final inlineNodes = _parseInlineOrMedia(trimmed);

      if (inlineNodes.isNotEmpty &&
          inlineNodes.every((n) => n is ImageNode || n is LinkedImageNode)) {
        nodes.add(InlineImageRowNode(inlineNodes));
        i++;
        continue;
      }

      nodes.addAll(inlineNodes);
      i++;
    }

    return nodes;
  }

  static List<PostNode> _parseInlineOrMedia(String input) {
    final nodes = <PostNode>[];
    final linkedImages = <int, LinkedImageNode>{};
    var processed = input;

    // ── Standard Markdown linked image [![alt](img)](link) ───────────────────
    processed = processed.replaceAllMapped(_linkedMdImgRegex, (m) {
      final imgUrl = m.group(2)!.trim();
      final linkUrl = m.group(3)!.trim();
      if (imgUrl.isEmpty || linkUrl.isEmpty) return m.group(0)!;
      final idx = linkedImages.length;
      linkedImages[idx] = LinkedImageNode(
        image: ImageNode(url: imgUrl),
        linkUrl: linkUrl,
      );
      return '\x00LINKEDIMG$idx\x00';
    });

    // ── AniList-style linked image [ img###(url) ](link) ─────────────────────
    processed = processed.replaceAllMapped(_linkedImgRegex, (m) {
      final innerRaw = m.group(1)!;
      final linkUrl = m.group(5)!.trim();
      String imgUrl;
      double? imgWidth;
      bool isPercent = false;

      if (innerRaw.toLowerCase().startsWith('<img')) {
        final srcMatch = RegExp(
          "src=[\"']([^\"']+)[\"']",
          caseSensitive: false,
        ).firstMatch(innerRaw);
        imgUrl = srcMatch?.group(1) ?? '';
        final wMatch = RegExp(
          "width=[\"']?(\\d+%?)[\"']?",
          caseSensitive: false,
        ).firstMatch(innerRaw);
        if (wMatch != null) {
          final ws = wMatch.group(1)!;
          isPercent = ws.contains('%');
          imgWidth = double.tryParse(ws.replaceAll('%', ''));
        }
      } else {
        final imgMatch = RegExp(
          r'img\s*(\d*%?)\s*\(([^)]+)\)',
          caseSensitive: false,
        ).firstMatch(innerRaw);
        final ws = imgMatch?.group(1) ?? '';
        imgUrl = imgMatch?.group(2) ?? '';
        isPercent = ws.contains('%');
        imgWidth = ws.isEmpty ? null : double.tryParse(ws.replaceAll('%', ''));
      }

      if (imgUrl.isEmpty) return m.group(0)!;
      final idx = linkedImages.length;
      linkedImages[idx] = LinkedImageNode(
        image: ImageNode(url: imgUrl, width: imgWidth, isPercentage: isPercent),
        linkUrl: linkUrl,
      );
      return '\x00LINKEDIMG$idx\x00';
    });

    final combinedRegex = RegExp(
      r'(youtube\s*\((.*?)\))|'
      r'(img\s*(\d*%?)\s*\((.*?)\))|'
      "(<img\\b[^>]*src=[\"']([^\"']+)[\"'][^>]*>)|"
      r'(webm\((.*?)\))|'
      r'(https?:\/\/(?:www\.|m\.)?(?:youtube\.com\/(?:watch\?v=|shorts\/)[^\s]+|youtu\.be\/[^\s]+))|'
      r'(https?:\/\/[^\s)]+)',
      caseSensitive: false,
    );

    int index = 0;

    for (final match in combinedRegex.allMatches(processed)) {
      if (match.start > index) {
        _addTextOrPlaceholders(
          processed.substring(index, match.start),
          nodes,
          linkedImages,
        );
      }

      final full = match.group(0)!;
      final lower = full.toLowerCase();

      if (lower.startsWith('youtube')) {
        final url = match.group(2) ?? '';
        final id = _extractYouTubeId(url);
        if (id != null) nodes.add(YouTubeNode(url: url, videoId: id));
      } else if (_extractYouTubeId(full) != null) {
        nodes.add(YouTubeNode(url: full, videoId: _extractYouTubeId(full)!));
      } else if (lower.startsWith('img')) {
        final widthStr = match.group(4) ?? '';
        final url = match.group(5) ?? '';
        if (url.isNotEmpty) {
          nodes.add(
            ImageNode(
              url: url,
              width: widthStr.isEmpty
                  ? null
                  : double.tryParse(widthStr.replaceAll('%', '')),
              isPercentage: widthStr.contains('%'),
            ),
          );
        }
      } else if (lower.startsWith('<img')) {
        final url = match.group(7) ?? '';
        if (url.isNotEmpty) nodes.add(ImageNode(url: url));
      } else if (lower.startsWith('webm')) {
        final url = match.group(9) ?? '';
        if (url.isNotEmpty) nodes.add(VideoNode(url));
      } else if (full.startsWith('http')) {
        nodes.add(TextNode(_buildLinkSpan(full, full)));
      }

      index = match.end;
    }

    if (index < processed.length) {
      _addTextOrPlaceholders(processed.substring(index), nodes, linkedImages);
    }

    return nodes;
  }

  static void _addTextOrPlaceholders(
    String text,
    List<PostNode> nodes,
    Map<int, LinkedImageNode> linkedImages,
  ) {
    if (linkedImages.isEmpty) {
      if (text.trim().isNotEmpty)
        nodes.add(TextNode(_parseInlineSpansToSpan(text)));
      return;
    }

    int cursor = 0;
    for (final m in RegExp(r'\x00LINKEDIMG(\d+)\x00').allMatches(text)) {
      if (m.start > cursor) {
        final fragment = text.substring(cursor, m.start);
        if (fragment.trim().isNotEmpty)
          nodes.add(TextNode(_parseInlineSpansToSpan(fragment)));
      }
      final idx = int.parse(m.group(1)!);
      if (linkedImages.containsKey(idx)) nodes.add(linkedImages[idx]!);
      cursor = m.end;
    }

    if (cursor < text.length) {
      final fragment = text.substring(cursor);
      if (fragment.trim().isNotEmpty)
        nodes.add(TextNode(_parseInlineSpansToSpan(fragment)));
    }
  }

  static String? _extractYouTubeId(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return null;
    if (uri.host.contains('youtu.be'))
      return uri.pathSegments.isNotEmpty ? uri.pathSegments.first : null;
    if (uri.queryParameters.containsKey('v')) return uri.queryParameters['v'];
    if (uri.pathSegments.contains('shorts')) {
      final idx = uri.pathSegments.indexOf('shorts');
      if (idx + 1 < uri.pathSegments.length) return uri.pathSegments[idx + 1];
    }
    return null;
  }

  static InlineSpan _parseInlineSpansToSpan(String text) {
    final spans = _parseInlineSpans(text);
    return spans.length == 1 ? spans.first : TextSpan(children: spans);
  }

  // Inline HTML tags mapped to formatting flags before regex matching
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

  static List<InlineSpan> _parseInlineSpans(
    String text, {
    bool bold = false,
    bool italic = false,
    bool strikethrough = false,
    bool code = false,
  }) {
    text = _expandHtmlInline(text);

    final spans = <InlineSpan>[];

    final pattern = RegExp(
      r'~!(.*?)!~|'
      r'(\*{3}|_{3})(.*?)\2|'
      r'(\*{2}|_{2})(.*?)\4|'
      r'(?<!\*)\*(?!\*)(.*?)(?<!\*)\*(?!\*)|'
      r'(?<!_)_(?!_)(.*?)(?<!_)_(?!_)|'
      r'~~(.*?)~~|'
      r'`([^`]+)`|'
      r'\[([^\]]*)\]\(\s*([^)]+?)\s*\)',
      dotAll: true,
    );

    int cursor = 0;

    for (final m in pattern.allMatches(text)) {
      if (m.start > cursor) {
        spans.add(
          _plainSpan(
            text.substring(cursor, m.start),
            bold: bold,
            italic: italic,
            strikethrough: strikethrough,
            code: code,
          ),
        );
      }

      final full = m.group(0)!;

      if (full.startsWith('~!')) {
        spans.add(WidgetSpan(child: _SpoilerInline(text: m.group(1) ?? '')));
      } else if (m.group(2) != null) {
        spans.add(
          TextSpan(
            children: _parseInlineSpans(
              m.group(3) ?? '',
              bold: true,
              italic: true,
              strikethrough: strikethrough,
            ),
          ),
        );
      } else if (m.group(4) != null) {
        spans.add(
          TextSpan(
            children: _parseInlineSpans(
              m.group(5) ?? '',
              bold: true,
              italic: italic,
              strikethrough: strikethrough,
            ),
          ),
        );
      } else if (m.group(6) != null) {
        spans.add(
          TextSpan(
            children: _parseInlineSpans(
              m.group(6) ?? '',
              bold: bold,
              italic: true,
              strikethrough: strikethrough,
            ),
          ),
        );
      } else if (m.group(7) != null) {
        spans.add(
          TextSpan(
            children: _parseInlineSpans(
              m.group(7) ?? '',
              bold: bold,
              italic: true,
              strikethrough: strikethrough,
            ),
          ),
        );
      } else if (m.group(8) != null) {
        spans.add(
          TextSpan(
            children: _parseInlineSpans(
              m.group(8) ?? '',
              bold: bold,
              italic: italic,
              strikethrough: true,
            ),
          ),
        );
      } else if (m.group(9) != null) {
        spans.add(
          TextSpan(
            text: m.group(9),
            style: const TextStyle(
              fontFamily: 'monospace',
              backgroundColor: Color(0x44FFFFFF),
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        );
      } else if (m.group(10) != null) {
        spans.add(_buildLinkSpan(m.group(10) ?? '', m.group(11) ?? ''));
      }

      cursor = m.end;
    }

    if (cursor < text.length) {
      spans.add(
        _plainSpan(
          text.substring(cursor),
          bold: bold,
          italic: italic,
          strikethrough: strikethrough,
          code: code,
        ),
      );
    }

    return spans.isEmpty ? [_plainSpan(text)] : spans;
  }

  static InlineSpan _plainSpan(
    String text, {
    bool bold = false,
    bool italic = false,
    bool strikethrough = false,
    bool code = false,
  }) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: code ? 13 : 15,
        color: Colors.white70,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontStyle: italic ? FontStyle.italic : FontStyle.normal,
        decoration: strikethrough
            ? TextDecoration.lineThrough
            : TextDecoration.none,
        fontFamily: code ? 'monospace' : null,
      ),
    );
  }

  static InlineSpan _buildLinkSpan(String label, String url) {
    return TextSpan(
      text: label,
      style: const TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
        fontSize: 15,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () =>
            launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SPOILER WIDGET
// ─────────────────────────────────────────────────────────────────────────────

class _SpoilerInline extends StatefulWidget {
  final String text;
  const _SpoilerInline({required this.text});

  @override
  State<_SpoilerInline> createState() => _SpoilerInlineState();
}

class _SpoilerInlineState extends State<_SpoilerInline> {
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
          style: TextStyle(
            fontSize: 15,
            color: _revealed ? Colors.white70 : Colors.transparent,
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// RENDERER
// ─────────────────────────────────────────────────────────────────────────────

class AniListRenderer extends StatelessWidget {
  final String content;

  const AniListRenderer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final nodes = AniListParser.parse(content);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: nodes.map((e) => _buildNode(context, e)).toList(),
    );
  }

  Widget _buildNode(BuildContext context, PostNode node) {
    if (node is HorizontalRuleNode) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Divider(color: Colors.white24, thickness: 1),
      );
    }

    if (node is HeaderNode) {
      const sizes = [28.0, 24.0, 20.0, 18.0, 16.0];
      final size = sizes[(node.level - 1).clamp(0, sizes.length - 1)];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: RichText(
          text: TextSpan(
            children: node.spans,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    if (node is BlockquoteNode) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.only(left: 12, top: 4, bottom: 4),
        decoration: const BoxDecoration(
          border: Border(left: BorderSide(color: Colors.white38, width: 3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: node.children.map((e) => _buildNode(context, e)).toList(),
        ),
      );
    }

    if (node is ListNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: node.items.asMap().entries.map((entry) {
            final idx = entry.key;
            final itemNodes = entry.value;
            final bullet = node.ordered ? '${idx + 1}.' : '•';
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 24,
                    child: Text(
                      bullet,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: itemNodes
                          .map((n) => _buildNode(context, n))
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      );
    }

    if (node is InlineImageRowNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Wrap(
          spacing: 4,
          runSpacing: 4,
          children: node.images.map((img) {
            if (img is LinkedImageNode)
              return _buildLinkedImageWidget(context, img);
            if (img is ImageNode) return _buildImageWidget(context, img);
            return const SizedBox();
          }).toList(),
        ),
      );
    }

    if (node is LinkedImageNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: _buildLinkedImageWidget(context, node),
      );
    }

    if (node is ImageNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: _buildImageWidget(context, node),
      );
    }

    if (node is YouTubeNode) {
      final thumbnail =
          'https://img.youtube.com/vi/${node.videoId}/hqdefault.jpg';
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: GestureDetector(
          onTap: () => launchUrl(
            Uri.parse(node.url),
            mode: LaunchMode.externalApplication,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: thumbnail,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.white24,
                    highlightColor: Colors.black12,
                    child: Container(height: 200, color: Colors.grey),
                  ),
                  errorWidget: (context, url, error) => Container(
                    height: 200,
                    alignment: Alignment.center,
                    color: Colors.black26,
                    child: const Icon(
                      PhosphorIconsFill.imageBroken,
                      color: Colors.white54,
                      size: 40,
                    ),
                  ),
                ),
              ),
              const Icon(Icons.play_circle_fill, color: Colors.white, size: 64),
            ],
          ),
        ),
      );
    }

    if (node is VideoNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: GestureDetector(
          onTap: () => launchUrl(
            Uri.parse(node.url),
            mode: LaunchMode.externalApplication,
          ),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.play_circle_fill,
              color: Colors.white,
              size: 64,
            ),
          ),
        ),
      );
    }

    if (node is BlockNode) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: node.children.map((e) => _buildNode(context, e)).toList(),
        ),
      );
    }

    if (node is TextNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: RichText(text: node.span),
      );
    }

    return const SizedBox();
  }

  Widget _buildLinkedImageWidget(BuildContext context, LinkedImageNode node) {
    return GestureDetector(
      onTap: () => launchUrl(
        Uri.parse(node.linkUrl),
        mode: LaunchMode.externalApplication,
      ),
      child: Stack(
        children: [
          _buildImageWidget(context, node.image),
          Positioned(
            bottom: 4,
            right: 4,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(
                Icons.open_in_new,
                color: Colors.white70,
                size: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWidget(BuildContext context, ImageNode node) {
    double? width;
    if (node.width != null) {
      width = node.isPercentage
          ? MediaQuery.of(context).size.width * (node.width! / 100)
          : node.width;
    }

    return CachedNetworkImage(
      imageUrl: node.url,
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
    );
  }
}
