// ignore_for_file: non_constant_identifier_names

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

class VAScreen extends ConsumerStatefulWidget {
  const VAScreen({super.key, required this.id});
  final int id;

  @override
  ConsumerState<VAScreen> createState() => _VAScreenState();
}

class _VAScreenState extends ConsumerState<VAScreen> {
  bool showDescription = false;

  void _toggleFav(WidgetRef ref, bool? flag, int id) async {
    if (flag == null) return;
    final client = ref.read(clientProvider);
    if (client == null) return;
    final res = await client
        .request(GToggleFavouriteReq(
          (b) => b..vars.staffId = id,
        ))
        .first;
    final req = GStaffQueryReq((b) => b..vars.id = widget.id);
    if (res.hasErrors) return;

    final cache = client.cache.readQuery(req);
    client.cache.writeQuery(
      req,
      cache!.rebuild(
        (p) => p..Staff.isFavourite = !flag,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    log.d(widget.id);
    final size = MediaQuery.of(context).size;
    final client = ref.watch(clientProvider);
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Operation(
          client: client!,
          operationRequest: GStaffQueryReq(
            (b) => b..vars.id = widget.id,
          ),
          builder: (context, response, error) {
            if (response == null || response.loading) {
              return Center(child: LoadingWidget);
            } else {
              final data = response.data?.Staff;
              return Stack(
                children: [
                  Container(
                    height: 200,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: size.width,
                          padding: const EdgeInsets.symmetric(horizontal: 10)
                              .copyWith(top: 50, bottom: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => context.pop(),
                                icon: const Icon(Icons.arrow_back_ios_rounded),
                              ),
                              Consumer(builder: (context, ref, child) {
                                return OutlinedButton.icon(
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                  ),
                                  onPressed: () async {
                                    _toggleFav(
                                      ref,
                                      response.data?.Staff?.isFavourite,
                                      widget.id,
                                    );
                                  },
                                  icon: LineIcon.heartAlt(
                                    color: response.data?.Staff?.isFavourite ==
                                            true
                                        ? Colors.red
                                        : null,
                                  ),
                                  label: Text(
                                      '${response.data?.Staff?.favourites ?? 0}'),
                                );
                              }),
                            ],
                          ),
                        ),
                        // * HEADER TILE
                        Container(
                          height: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // * COVER IMAGE
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl: data?.image?.medium ??
                                      data?.image?.large ??
                                      '',
                                  width: 120,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              // * Name Box
                              SizedBox(
                                width: size.width - 40 - 120 - 16,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      data?.name?.userPreferred ??
                                          data?.name?.full ??
                                          '',
                                      maxLines: 2,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // * Bio Title
                        Visibility(
                          visible: true,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15)
                                .copyWith(top: 30),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BIO',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // * Bio Title End
                        // * Bio Information Start
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Builder(builder: (context) {
                            List<(IconData, String)> param = [];
                            if (data?.bloodType != null) {
                              param
                                  .add((Icons.bloodtype, '${data?.bloodType}'));
                            }
                            if (data?.age != null) {
                              param.add((Icons.timelapse, '${data?.age} Year'));
                            }
                            // if (data?.homeTown != null) {
                            //   param.add((
                            //     Icons.location_on_outlined,
                            //     '${data?.homeTown!.substring(0, data.homeTown!.indexOf(','))}'
                            //   ));
                            // }
                            if (data?.languageV2 != null) {
                              param
                                  .add((Icons.language, '${data?.languageV2}'));
                            }
                            if (data?.dateOfBirth?.day != null &&
                                data?.dateOfBirth?.month != null) {
                              param.add((
                                Icons.cake_outlined,
                                '${data?.dateOfBirth?.day} / ${data?.dateOfBirth?.month}'
                              ));
                            }
                            return GridView.builder(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 5,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: param.length,
                              itemBuilder: (context, index) => Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.3),
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppTheme.secondaryColor,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(param.elementAt(index).$1, size: 16),
                                    Text(
                                      param.elementAt(index).$2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                        // * Bio Information End
                        // * Description
                        DescriptionSection(data),
                        // ** Description End
                        // * character
                        Visibility(
                          visible: data?.characters?.nodes != null &&
                              (data?.characters?.nodes?.isNotEmpty ?? false),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20)
                                        .copyWith(top: 20),
                                child: const Text(
                                  'CHARACTERS',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 140,
                                width: size.width,
                                child: ListView.builder(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      data?.characters?.nodes?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    final characterData = data
                                        ?.characters?.nodes
                                        ?.elementAt(index);
                                    return Container(
                                      width: 80,
                                      margin: const EdgeInsets.only(left: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              HapticFeedback.mediumImpact();
                                              CharacterDetailRoute(
                                                id: characterData?.id ?? 0,
                                                name: characterData?.name?.full
                                                        ?.replaceAll(
                                                            ' ', '-') ??
                                                    '',
                                              ).push(context);
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Hero(
                                                tag:
                                                    '${characterData?.id ?? ''}',
                                                child: CachedNetworkImage(
                                                  height: 80,
                                                  width: 80,
                                                  fit: BoxFit.cover,
                                                  imageUrl: characterData
                                                          ?.image?.large ??
                                                      characterData
                                                          ?.image?.medium ??
                                                      '',
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            characterData?.name?.full ?? '',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                const TextStyle(fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ** Character END
                        //* Appeared in title
                        Visibility(
                          visible:
                              data?.characterMedia?.nodes?.isNotEmpty ?? false,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'APPEARED IN',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //* APPEARED
                        MediaSection(data: data),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Visibility DescriptionSection(GStaffQueryData_Staff? data) {
    return Visibility(
      visible: data?.description != null,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.3),
            width: 0.5,
          ),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        color: AppTheme.secondaryColor.withOpacity(0.5),
        child: StatefulBuilder(
          builder: (context, setState) => Container(
            padding: const EdgeInsets.all(10),
            constraints: !showDescription
                ? const BoxConstraints(maxHeight: 300)
                : const BoxConstraints(),
            child: GestureDetector(
              onTap: () {
                setState(() => showDescription = !showDescription);
              },
              child: Markdown(
                padding: const EdgeInsets.all(0),
                onTapLink: (text, href, title) {
                  log.d(href);
                  if (href == null) return;
                  launchUrlString(
                    href,
                    mode: LaunchMode.externalApplication,
                  );
                },
                styleSheet: MarkdownStyleSheet(
                  a: const TextStyle(color: Colors.green),
                ),
                data: data?.description
                        .toString()
                        .replaceAll('\n', '\n\n')
                        .replaceAll('~', '_') ??
                    '',
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                selectable: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MediaSection extends StatelessWidget {
  const MediaSection({
    super.key,
    required this.data,
  });

  final GStaffQueryData_Staff? data;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data?.characterMedia?.nodes?.isNotEmpty ?? false,
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: data?.characterMedia?.nodes?.length ?? 0,
          itemBuilder: (context, index) {
            final relatedAnimeData =
                data?.characterMedia?.nodes?.elementAt(index);
            return Container(
              width: 100,
              margin: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () => context.pushNamed(
                            AppRouteConstant.MediaScreen.name,
                            pathParameters: {
                              'id': (relatedAnimeData?.id ?? 0).toString(),
                              'title':
                                  relatedAnimeData?.title?.userPreferred ?? '',
                            },
                          ),
                          child: CachedNetworkImage(
                            height: 130,
                            width: 100,
                            fit: BoxFit.cover,
                            imageUrl: relatedAnimeData?.coverImage?.large ?? '',
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            child: Center(
                              child: Text(
                                relatedAnimeData?.format?.name ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 35,
                    child: Text(
                      relatedAnimeData?.title?.userPreferred ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
