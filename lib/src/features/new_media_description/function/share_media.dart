import 'dart:io';

import 'package:anilist/anilist.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareMedia({
  required ScreenshotController controller,
  GMediaDetailQueryData_Media? media,
  String? shareSubject,
  String? shareTitle,
}) async {
  final mediaType = media?.type == GMediaType.ANIME ? 'anime' : 'manga';
  final id = media?.id ?? 0;
  final title = media?.title?.userPreferred?.replaceAll(' ', '-') ?? 'title';
  final link =
      // media?.siteUrl ??
      'https://anilist.co/$mediaType/$id/$title';
  final img = await controller.capture();
  final directory = (await getTemporaryDirectory()).path;
  File imgFile = File('$directory/kurumi.png');
  await imgFile.writeAsBytes(img!);
  Share.shareXFiles(
    [XFile('$directory/kurumi.png')],
    subject: shareSubject ?? media?.title?.userPreferred ?? '',
    text: shareTitle ??
        'Link: $link\n\n${media?.description?.replaceAll('<br><br>', '\n').replaceAll('<br>', '\n').replaceAll('<b>', '').replaceAll('</b>', '').replaceAll('<i>', '').replaceAll('</i>', '').replaceAll('\n\n', '\n') ?? ''}',
  );
}
