import 'package:html_unescape/html_unescape.dart';

/// Converts AniList activity text into well-formed standard Markdown.
///
/// Handles:
///  - img###(url), img###%(url), img (url) with optional spaces → ![](url)
///  - webm(url)         → [▶ Video](url)
///  - youtube(url)      → [▶ YouTube](url)
///  - ~~~block~~~       → block (strip markers, preserve content)
///  - ~!spoiler!~       → `||spoiler||` (Discord-style, readable fallback)
///  - <img src="…">     → ![](url)
///  - <center>…</center>→ stripped
///  - <br>              → newline
///  - <hr>              → ---
///  - <h1>…</h1>        → # …
///  - <a>…</a>          → text only (strip tags)
///  - <b>/<strong>      → **…**
///  - <i>/<em>          → _…_
///  - <del>/<strike>    → ~~…~~
///  - <code>            → `…`
///  - <blockquote>      → > …
///  - <div rel=spoiler> → ~!…!~ then handled above
///  - &#…; entities     → decoded
///  - Bare URLs         → preserved as-is (Markdown auto-links)
///  - Linked images     → [![](img)](link)
String anilistToMarkdown(String input) {
  if (input.trim().isEmpty) return '';

  final unescape = HtmlUnescape();
  input = unescape.convert(input);
  input = _decodeNumericEntities(input);

  // ── 1. Block-level HTML ────────────────────────────────────────────────────

  // <center> / </center> → strip
  input = input.replaceAll(
    RegExp(r'</?center\s*/?>', caseSensitive: false),
    '',
  );

  // <br> → newline
  input = input.replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n');

  // <hr> → ---
  input = input.replaceAll(
    RegExp(r'<hr\s*/?>', caseSensitive: false),
    '\n---\n',
  );

  // <h1>…</h1> → # …
  input = input.replaceAllMapped(
    RegExp(r'<h([1-5])[^>]*>(.*?)</h\1>', caseSensitive: false, dotAll: true),
    (m) =>
        '${'#' * int.parse(m.group(1)!)} ${_stripTags(m.group(2)!).trim()}\n',
  );

  // <blockquote>…</blockquote> → > …
  input = input.replaceAllMapped(
    RegExp(
      r'<blockquote>(.*?)</blockquote>',
      caseSensitive: false,
      dotAll: true,
    ),
    (m) => m.group(1)!.trim().split('\n').map((l) => '> $l').join('\n') + '\n',
  );

  // <div rel="spoiler">…</div> → ~!…!~
  input = input.replaceAllMapped(
    RegExp(
      r'<div[^>]*rel=["\x27]?spoiler["\x27]?[^>]*>(.*?)</div>',
      caseSensitive: false,
      dotAll: true,
    ),
    (m) => '~!${m.group(1)!}!~',
  );

  // ── 2. Inline HTML → Markdown ─────────────────────────────────────────────

  input = input
      .replaceAllMapped(
        RegExp(
          r'<(b|strong)>(.*?)</(b|strong)>',
          caseSensitive: false,
          dotAll: true,
        ),
        (m) => '**${m.group(2)}**',
      )
      .replaceAllMapped(
        RegExp(r'<(i|em)>(.*?)</(i|em)>', caseSensitive: false, dotAll: true),
        (m) => '_${m.group(2)}_',
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

  // <img src="…"> → ![](url)
  input = input.replaceAllMapped(
    RegExp(
      r'''<img\b[^>]*\bsrc=["']([^"']+)["'][^>]*>''',
      caseSensitive: false,
    ),
    (m) => '![](${m.group(1)!.trim()})',
  );

  // Strip remaining <a> tags but keep inner text
  input = input.replaceAllMapped(
    RegExp(r'<a[^>]*>(.*?)</a>', caseSensitive: false, dotAll: true),
    (m) => m.group(1)!,
  );
  // Bare opening/closing <a> tags with no content between them
  input = input.replaceAll(RegExp(r'</?a[^>]*>', caseSensitive: false), '');

  // ── 3. ~~~ code/block markers ─────────────────────────────────────────────
  // AniList ~~~ is a styled block, not a code block — just strip the markers
  // and preserve the inner content as plain Markdown.
  input = input.replaceAllMapped(
    RegExp(r'~~~([\s\S]*?)~~~'),
    (m) => m.group(1)!.trim(),
  );

  // ── 4. Spoiler ~!…!~ → ||…|| ─────────────────────────────────────────────
  input = input.replaceAllMapped(
    RegExp(r'~!([\s\S]*?)!~'),
    (m) => '||${m.group(1)!.trim()}||',
  );

  // ── 5. Linked images  [ img###(url) ](link)  or  [![alt](img)](link) ──────

  // AniList style: [ img###(url) ](link)
  input = input.replaceAllMapped(
    RegExp(
      r'\[\s*img\s*(\d*\s*%?)\s*\(([^)]+)\)\s*\]\s*\(([^)]+)\)',
      caseSensitive: false,
    ),
    (m) {
      final imgUrl = m.group(2)!.trim();
      final linkUrl = m.group(3)!.trim();
      return '[![]($imgUrl)]($linkUrl)';
    },
  );

  // ── 6. Standalone AniList media syntax ────────────────────────────────────

  // img ### % (url)  — percentage width (width hint lost, still renders)
  input = input.replaceAllMapped(
    RegExp(r'\bimg\s*(\d+)\s*%\s*\(([^)]+)\)', caseSensitive: false),
    (m) => '![](${m.group(2)!.trim()})',
  );

  // img ### (url)  — pixel width
  input = input.replaceAllMapped(
    RegExp(r'\bimg\s*(\d+)\s*\(([^)]+)\)', caseSensitive: false),
    (m) => '![](${m.group(2)!.trim()})',
  );

  // img (url) with optional spaces
  input = input.replaceAllMapped(
    RegExp(r'\bimg\s*\(\s*([^)]+?)\s*\)', caseSensitive: false),
    (m) => '![](${m.group(1)!.trim()})',
  );

  // webm(url) → linked play button
  input = input.replaceAllMapped(
    RegExp(r'\bwebm\s*\(([^)]+)\)', caseSensitive: false),
    (m) => '[▶ Video](${m.group(1)!.trim()})',
  );

  // youtube(url) / Youtube(url)
  input = input.replaceAllMapped(
    RegExp(r'\byoutube\s*\(([^)]+)\)', caseSensitive: false),
    (m) => '[▶ YouTube](${m.group(1)!.trim()})',
  );

  // ── 7. Normalise whitespace ───────────────────────────────────────────────

  // Collapse 3+ consecutive blank lines → 2
  input = input.replaceAll(RegExp(r'\n{3,}'), '\n\n');

  // Trim leading/trailing whitespace
  input = input.trim();

  return input;
}

// ─────────────────────────────────────────────────────────────────────────────
// HELPERS
// ─────────────────────────────────────────────────────────────────────────────

String _decodeNumericEntities(String text) {
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

String _stripTags(String html) => html.replaceAll(RegExp(r'<[^>]+>'), '');
