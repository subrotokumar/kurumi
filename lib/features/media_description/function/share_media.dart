import 'dart:io';

import 'package:anilist/media_detail_query.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareMedia({
  required ScreenshotController controller,
  required GMediaDetailQueryData_Media? media,
}) async {
  final mediaType = media?.type == GMediaType.ANIME ? 'anime' : 'manga';
  final id = media?.id ?? 0;
  final link = 'https://anilist.co/$mediaType/$id/';
  final img = await controller.capture();
  final directory = (await getTemporaryDirectory()).path;
  File imgFile = File('$directory/kurumi.png');
  await imgFile.writeAsBytes(img!);
  Share.shareXFiles(
    [XFile('$directory/kurumi.png')],
    subject: media?.title?.userPreferred ?? '',
    text:
        '${media?.description?.replaceAll('<br>', '\n') ?? ''}\n\nLink: $link',
  );
}
