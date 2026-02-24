import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// ---------------- NODE MODEL ----------------

abstract class PostNode {}

class TextNode extends PostNode {
  final InlineSpan span;
  TextNode(this.span);
}

class ImageNode extends PostNode {
  final String url;
  final double? width;
  ImageNode({required this.url, this.width});
}

class BlockNode extends PostNode {
  final List<PostNode> children;
  BlockNode(this.children);
}

/// ---------------- PARSER ----------------

class AniListParser {
  static List<PostNode> parse(String input) {
    final List<PostNode> nodes = [];

    final blockRegex = RegExp(r'~~~(.*?)~~~', dotAll: true);

    int currentIndex = 0;

    for (final match in blockRegex.allMatches(input)) {
      if (match.start > currentIndex) {
        nodes.addAll(
          _parseInlineOrImages(input.substring(currentIndex, match.start)),
        );
      }

      final blockContent = match.group(1)!.trim();
      final inner = _parseInlineOrImages(blockContent);
      nodes.add(BlockNode(inner));

      currentIndex = match.end;
    }

    if (currentIndex < input.length) {
      nodes.addAll(_parseInlineOrImages(input.substring(currentIndex)));
    }

    return nodes;
  }

  static List<PostNode> _parseInlineOrImages(String input) {
    final nodes = <PostNode>[];

    final imgRegex = RegExp(r'img(\d*)\((.*?)\)');
    int index = 0;

    for (final match in imgRegex.allMatches(input)) {
      if (match.start > index) {
        final text = input.substring(index, match.start);
        nodes.add(TextNode(_parseInline(text)));
      }

      final widthStr = match.group(1);
      final url = match.group(2)!;

      nodes.add(
        ImageNode(
          url: url,
          width: (widthStr != null && widthStr.isNotEmpty)
              ? double.tryParse(widthStr)
              : null,
        ),
      );

      index = match.end;
    }

    if (index < input.length) {
      nodes.add(TextNode(_parseInline(input.substring(index))));
    }

    return nodes;
  }

  static InlineSpan _parseInline(String text) {
    final List<InlineSpan> spans = [];
    int index = 0;

    final linkRegex = RegExp(r'\[(.*?)\]\((.*?)\)');
    final accentRegex = RegExp(r'<a>(.*?)<\/a>');
    final boldRegex = RegExp(r'__(.*?)__');
    final italicRegex = RegExp(r'_(.*?)_');
    final codeRegex = RegExp(r'`(.*?)`');

    while (index < text.length) {
      final linkMatch = linkRegex.matchAsPrefix(text, index);
      if (linkMatch != null) {
        final label = linkMatch.group(1)!;
        final url = linkMatch.group(2)!;

        spans.add(
          WidgetSpan(
            child: GestureDetector(
              onTap: () => launchUrl(Uri.parse(url)),
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        );

        index = linkMatch.end;
        continue;
      }

      final accentMatch = accentRegex.matchAsPrefix(text, index);
      if (accentMatch != null) {
        spans.add(
          TextSpan(
            text: accentMatch.group(1),
            style: const TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
        index = accentMatch.end;
        continue;
      }

      final boldMatch = boldRegex.matchAsPrefix(text, index);
      if (boldMatch != null) {
        spans.add(
          TextSpan(
            text: boldMatch.group(1),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        );
        index = boldMatch.end;
        continue;
      }

      final italicMatch = italicRegex.matchAsPrefix(text, index);
      if (italicMatch != null) {
        spans.add(
          TextSpan(
            text: italicMatch.group(1),
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
        );
        index = italicMatch.end;
        continue;
      }

      final codeMatch = codeRegex.matchAsPrefix(text, index);
      if (codeMatch != null) {
        spans.add(
          TextSpan(
            text: codeMatch.group(1),
            style: const TextStyle(
              fontFamily: 'monospace',
              backgroundColor: Color(0xFFE0E0E0),
            ),
          ),
        );
        index = codeMatch.end;
        continue;
      }

      spans.add(TextSpan(text: text[index]));
      index++;
    }

    return TextSpan(
      style: const TextStyle(fontSize: 15, color: Colors.white70),
      children: spans,
    );
  }
}

/// ---------------- RENDERER ----------------

class AniListRenderer extends StatelessWidget {
  final String content;

  const AniListRenderer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final nodes = AniListParser.parse(content);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: nodes.map(_buildNode).toList(),
    );
  }

  Widget _buildNode(PostNode node) {
    if (node is BlockNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: node.children.map(_buildNode).toList(),
          ),
        ),
      );
    }

    if (node is ImageNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: CachedNetworkImage(
          imageUrl: node.url,
          width: node.width,
          fit: BoxFit.contain,
        ),
      );
    }

    if (node is TextNode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: RichText(text: node.span),
      );
    }

    return const SizedBox();
  }
}
