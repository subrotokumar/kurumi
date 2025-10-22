import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/anilist_tracking/anilist_tracking.widget.dart';
import 'package:kurumi/src/features/new_media_description/function/share_media.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class MediaHeaderSection extends ConsumerWidget {
  final GMediaDetailQueryData_Media? data;
  final ScreenshotController controller;
  final StateProvider<bool> loading;

  const MediaHeaderSection({
    super.key,
    required this.data,
    required this.controller,
    required this.loading,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(mediaListClientProvider);
    final size = MediaQuery.of(context).size;
    Color color = Col.parseHex(data?.coverImage?.color);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: '${data?.id ?? ''}',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      var width = MediaQuery.of(context).size.width;
                      return AlertDialog(
                        backgroundColor: AppTheme.secondaryColor,
                        contentPadding: const EdgeInsets.all(10),
                        content: Hero(
                          tag: '${data?.id ?? ''}',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: CachedNetworkImage(
                              imageUrl:
                                  data?.coverImage?.extraLarge ??
                                  data?.coverImage?.large ??
                                  '',
                              width: width,
                              height: width * 3 / 4,
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) =>
                                  CachedNetworkImage(
                                    imageUrl:
                                        data?.coverImage?.large ??
                                        data?.coverImage?.medium ??
                                        '',
                                    width: width,
                                    height: width * 3 / 4,
                                    fit: BoxFit.cover,
                                  ),
                            ),
                          ),
                        ),
                        actions: [
                          OutlinedButton(
                            onPressed: () => context.pop(),
                            child: const Text('CLOSE'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: CachedNetworkImage(
                  imageUrl:
                      data?.coverImage?.large ?? data?.coverImage?.medium ?? '',
                  fit: BoxFit.cover,
                  height: (size.width / 3) * 4 / 3,
                  width: size.width / 3,
                  errorWidget: (context, url, error) => CachedNetworkImage(
                    imageUrl:
                        data?.coverImage?.extraLarge ??
                        data?.coverImage?.large ??
                        '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          GestureDetector(
            onTap: () {
              String title =
                  data?.title?.userPreferred ??
                  data?.title?.userPreferred ??
                  data?.title?.romaji ??
                  '';
              Clipboard.setData(ClipboardData(text: title));
              showSnackBar(context, 'Copied  \'$title\'');
            },
            child: SizedBox(
              width: size.width * .7,
              child: Text(
                data?.title?.userPreferred ??
                    data?.title?.userPreferred ??
                    data?.title?.romaji ??
                    '',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Poppins(
                  fontWeight: FontWeight.w600,
                  color: color,
                  fontSize: 19,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          RichText(
            text: TextSpan(
              text: '${data?.format?.toString().replaceAll('_', ' ') ?? ''} • ',
              style: Poppins(fontWeight: FontWeight.w500, fontSize: 15),
              children: [
                TextSpan(text: '${data?.startDate?.year ?? ''} • '),
                TextSpan(
                  text:
                      data?.status?.name.toString().replaceAll('_YET_', ' ') ??
                      '',
                ),
              ],
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Builder(
                builder: (context) {
                  Color col = switch (data?.mediaListEntry?.status) {
                    GMediaListStatus.CURRENT => Colors.greenAccent,
                    GMediaListStatus.COMPLETED => Colors.blue,
                    GMediaListStatus.PLANNING => Colors.grey,
                    GMediaListStatus.PAUSED => Colors.yellow,
                    GMediaListStatus.DROPPED => Colors.red,
                    GMediaListStatus.REPEATING => Colors.purpleAccent,
                    _ => Colors.white.withValues(alpha: 0.9),
                  };
                  return IconButton(
                    style: IconButton.styleFrom(
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 0.8,
                          color: data?.mediaListEntry?.status == null
                              ? Theme.of(context).colorScheme.outline
                              : col.withValues(alpha: 0.5),
                        ),
                      ),
                      backgroundColor: data?.mediaListEntry?.status == null
                          ? Colors.white.withValues(alpha: 0.09)
                          : col.withValues(alpha: 0.2),
                    ),
                    onPressed: () => showBottomSheet(
                      context: context,
                      backgroundColor: kTransparentColor,
                      builder: (context) => AnilistTrackingWidget(media: data),
                    ),
                    icon: switch (data?.mediaListEntry?.status) {
                      GMediaListStatus.CURRENT => Icon(
                        PhosphorIcons.play(PhosphorIconsStyle.fill),
                        color: col,
                        size: 18,
                      ),
                      GMediaListStatus.COMPLETED => Icon(
                        PhosphorIcons.checkFat(PhosphorIconsStyle.fill),
                        color: col,
                        size: 18,
                      ),
                      GMediaListStatus.PLANNING => Icon(
                        PhosphorIcons.planet(PhosphorIconsStyle.fill),
                        color: col,
                        size: 18,
                      ),
                      GMediaListStatus.DROPPED => Icon(
                        PhosphorIcons.trash(PhosphorIconsStyle.fill),
                        color: col,
                        size: 18,
                      ),
                      GMediaListStatus.PAUSED => Icon(
                        PhosphorIconsRegular.pauseCircle,
                      ),
                      GMediaListStatus.REPEATING => Icon(
                        PhosphorIconsBold.repeat,
                      ),
                      _ => Icon(
                        PhosphorIcons.plus(PhosphorIconsStyle.bold),
                        color: col,
                        size: 18,
                      ),
                    },
                  );
                },
              ),
              const SizedBox(width: 5),
              IconButton(
                style: IconButton.styleFrom(
                  shape: CircleBorder(
                    side: BorderSide(
                      width: 0.8,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  foregroundColor: Theme.of(context).iconTheme.color,
                  backgroundColor: Colors.white.withValues(alpha: 0.09),
                ),
                onPressed: () => showModalBottomSheet(
                  enableDrag: true,
                  context: context,
                  elevation: 0,
                  useSafeArea: true,
                  backgroundColor: kTransparentColor,
                  builder: (context) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ).copyWith(bottom: 50),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ).copyWith(top: 20),
                      decoration: BoxDecoration(
                        color: Color(0xff272227).withValues(alpha: 0.92),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Share',
                              style: Poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                flex: 1,
                                child: OutlinedButton.icon(
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(40),
                                    backgroundColor: Colors.white10,
                                    foregroundColor: Colors.white70,
                                  ),
                                  onPressed: () {
                                    final mediaType =
                                        data?.type == GMediaType.ANIME
                                        ? 'anime'
                                        : 'manga';
                                    final id = data?.id ?? 0;
                                    final title =
                                        data?.title?.userPreferred?.replaceAll(
                                          ' ',
                                          '-',
                                        ) ??
                                        'title';
                                    final link =
                                        'https://anilist.co/$mediaType/$id/$title';
                                    SharePlus.instance.share(
                                      ShareParams(uri: Uri.parse(link)),
                                    );
                                  },
                                  icon: Icon(PhosphorIconsRegular.link),
                                  label: Text(
                                    "Link",
                                    style: Poppins(fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              Flexible(
                                flex: 1,
                                child: OutlinedButton.icon(
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(40),
                                    backgroundColor: Colors.white10,
                                    foregroundColor: Colors.white70,
                                  ),
                                  onPressed: () => shareMedia(
                                    controller: controller,
                                    media: data,
                                  ),
                                  icon: Icon(PhosphorIconsRegular.image),
                                  label: Text(
                                    "Image",
                                    style: Poppins(fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                icon: Icon(PhosphorIcons.shareNetwork(), size: 20),
              ),
              const SizedBox(width: 5),
              IconButton(
                style: IconButton.styleFrom(
                  shape: CircleBorder(
                    side: BorderSide(
                      width: 0.8,
                      color: switch (data?.isFavourite) {
                        true => Colors.pinkAccent.shade200.withValues(
                          alpha: 0.5,
                        ),
                        _ => Theme.of(context).colorScheme.outline,
                      },
                    ),
                  ),
                  foregroundColor: Theme.of(context).iconTheme.color,
                  backgroundColor: switch (data?.isFavourite) {
                    true => Colors.pink.withValues(alpha: 0.1),
                    _ => Colors.white.withValues(alpha: 0.09),
                  },
                ),
                onPressed: () async {
                  ref.read(loading.notifier).update((state) => true);
                  try {
                    client!
                        .request(
                          data?.type == GMediaType.ANIME
                              ? GToggleFavouriteReq(
                                  (b) => b..vars.animeId = data?.id,
                                )
                              : GToggleFavouriteReq(
                                  (b) => b..vars.mangaId = data?.id,
                                ),
                        )
                        .listen((event) {
                          final req = GMediaDetailQueryReq(
                            (b) => b
                              ..vars.id = data?.id
                              ..vars.limit = 5
                              ..vars.page = 1
                              ..vars.perPage = 10,
                          );
                          final cache = client.cache.readQuery(req);
                          client.cache.writeQuery(
                            req,
                            cache!.rebuild(
                              (p) => p
                                ..Media.isFavourite =
                                    !(data?.isFavourite ?? false),
                            ),
                          );
                          ref.read(loading.notifier).update((state) => false);
                        });
                  } catch (e) {
                    ref.read(loading.notifier).update((state) => false);
                  }
                },
                icon: data?.isFavourite ?? false
                    ? Icon(
                        PhosphorIcons.heart(PhosphorIconsStyle.fill),
                        color: Colors.pink,
                        size: 20,
                      )
                    : Icon(PhosphorIcons.heart(), size: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
