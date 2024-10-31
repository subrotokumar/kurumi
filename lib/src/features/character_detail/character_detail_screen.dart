import 'dart:ui';

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:line_icons/line_icon.dart';
import 'package:shimmer/shimmer.dart';

class CharacterDetailScreen extends ConsumerStatefulWidget {
  const CharacterDetailScreen({super.key, required this.id});
  final int id;

  @override
  ConsumerState<CharacterDetailScreen> createState() =>
      _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends ConsumerState<CharacterDetailScreen> {
  bool showDescription = false;
  bool showSpoiler = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final client = ref.watch(clientProvider);
    return Scaffold(
      body: Operation(
        client: client ?? initClient(),
        operationRequest: GCharacterDetailQueryReq(
          (b) => b
            ..vars.id = widget.id
            ..vars.page = 1,
        ),
        builder: (context, response, error) {
          if (response == null || response.loading) {
            return LoadingWidget;
          } else {
            final data = response.data?.Character;
            final dateOfBirth = DateFormat()
                .format(DateTime(
                  2000,
                  data?.dateOfBirth?.month ?? 0,
                  data?.dateOfBirth?.day ?? 0,
                ))
                .toString();
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(data?.image?.large ?? ''),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 0.2),
                child: Scaffold(
                  backgroundColor:
                      const Color.fromARGB(255, 29, 29, 29).withOpacity(0.9),
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        //* APP Bar
                        AppBar(
                          surfaceTintColor: AppTheme.background,
                          elevation: 0,
                          backgroundColor: kTransparentColor,
                          actions: [
                            Center(
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                      color: Colors.white10,
                                      width: 0.1,
                                    ),
                                  ),
                                  visualDensity:
                                      const VisualDensity(vertical: -3),
                                  backgroundColor: Colors.white10,
                                  fixedSize: const Size.fromHeight(15),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 9,
                                    vertical: 4,
                                  ),
                                ),
                                onPressed: () async =>
                                    _toggleFav(data?.isFavourite ?? false),
                                icon: LineIcon.heartAlt(
                                  color: (data?.isFavourite ?? false)
                                      ? Colors.redAccent
                                      : null,
                                  size: 18,
                                ),
                                label: Text(data?.favourites?.toString() ?? ''),
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 12, 20, 10),
                          height: 150,
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width - 170,
                                      child: Text(
                                        data?.name?.full ?? '',
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.green.shade300,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                      visible:
                                          data?.dateOfBirth?.month != null &&
                                              data?.dateOfBirth?.day != null,
                                      child: RichText(
                                        text: TextSpan(
                                          text: ' Date of Birth : ',
                                          style: const TextStyle(),
                                          children: [
                                            TextSpan(
                                              text: dateOfBirth.substring(
                                                0,
                                                dateOfBirth.indexOf(','),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible: data?.age != null,
                                      child: RichText(
                                        text: TextSpan(
                                          text: ' Age : ',
                                          style: const TextStyle(),
                                          children: [
                                            TextSpan(
                                              text: data?.age ?? '',
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible: data?.gender != null,
                                      child: RichText(
                                        text: TextSpan(
                                          text: ' Gender : ',
                                          style: const TextStyle(),
                                          children: [
                                            TextSpan(
                                              text: data?.gender ?? '',
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Hero(
                                tag: data?.image?.large ?? '',
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: data?.image?.large ?? '',
                                    fit: BoxFit.cover,
                                    width: 120,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // -- Description
                        Visibility(
                          visible: data?.description != null,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                color: Colors.white12,
                                width: 0.5,
                              ),
                            ),
                            margin: const EdgeInsets.all(15),
                            color: Colors.black.withOpacity(0.09),
                            child: StatefulBuilder(
                              builder: (context, newState) {
                                final spoilerDescription = data?.description
                                        .toString()
                                        .replaceAll('\n', '\n\n')
                                        .replaceAll('~', '_')
                                        .replaceAll(':__', "__ ") ??
                                    '';

                                RegExp regExp = RegExp(r'\s*_!\s*.+?\s*!_\s*');
                                String noSpoilerDescription =
                                    spoilerDescription.replaceAll(regExp, '');
                                final containSpoiler =
                                    spoilerDescription != noSpoilerDescription;
                                return Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      constraints: !showDescription
                                          ? const BoxConstraints(maxHeight: 300)
                                          : const BoxConstraints(),
                                      child: GestureDetector(
                                        onTap: () {
                                          newState(() => showDescription =
                                              !showDescription);
                                        },
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Markdown(
                                                onTapLink: (text, href, title) {
                                                  if (href == null) return;
                                                  if (href.startsWith(
                                                      'https://anilist.co/')) {
                                                    context.push(href.replaceAll(
                                                        'https://anilist.co',
                                                        ''));
                                                  }
                                                },
                                                padding:
                                                    const EdgeInsets.all(0),
                                                data: showSpoiler
                                                    ? spoilerDescription
                                                        .replaceAll("_!", "**")
                                                        .replaceAll("!_", "**")
                                                    : noSpoilerDescription,
                                                shrinkWrap: true,
                                                physics:
                                                    const ClampingScrollPhysics(),
                                                selectable: true,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(width: 10),
                                        if (containSpoiler)
                                          TextButton(
                                            style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                foregroundColor: showSpoiler
                                                    ? null
                                                    : Colors.redAccent),
                                            onPressed: () => newState(() =>
                                                showSpoiler = !showSpoiler),
                                            child: Text(showSpoiler
                                                ? 'Hide Spoiler'
                                                : 'Show Spoiler'),
                                          ),
                                        const Spacer(),
                                        IconButton(
                                          style: IconButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                          ),
                                          onPressed: () => newState(() =>
                                              showDescription =
                                                  !showDescription),
                                          icon: Icon(showDescription
                                              ? Icons.arrow_drop_up_outlined
                                              : Icons.arrow_drop_down),
                                        ),
                                      ],
                                    )
                                  ].reversed.toList(),
                                );
                              },
                            ),
                          ),
                        ),
                        //* VA TITLE
                        Visibility(
                          visible: data?.media?.edges?.first?.voiceActors
                                  ?.isNotEmpty ??
                              false,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'VAs',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //* VA SECTION
                        Visibility(
                          visible: data?.media?.edges?.first?.voiceActors
                                  ?.isNotEmpty ??
                              false,
                          child: SizedBox(
                            height: 145,
                            width: size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              itemCount: (data?.media?.edges?.first?.voiceActors
                                      ?.length ??
                                  0),
                              itemBuilder: (context, index) {
                                final va = data
                                    ?.media?.edges?.first?.voiceActors?[index];
                                return GestureDetector(
                                  onTap: () => context.pushNamed(
                                    AppRouteConstant.VAScreen.name,
                                    pathParameters: {
                                      'id': (va?.id ?? -1).toString(),
                                      // 'name': va?.name?.full ?? ''
                                    },
                                  ),
                                  child: Container(
                                    width: 85,
                                    height: 145,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    va?.image?.large ?? '',
                                                width: 80,
                                                height: 100,
                                                fit: BoxFit.cover,
                                                progressIndicatorBuilder:
                                                    (context, url, progress) =>
                                                        Shimmer.fromColors(
                                                  baseColor: Colors.white30,
                                                  highlightColor:
                                                      Colors.black12,
                                                  child: Container(
                                                    color: Colors.white30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              left: 0,
                                              right: 0,
                                              child: Container(
                                                width: 80,
                                                height: 20,
                                                decoration: const BoxDecoration(
                                                  color: Colors.black38,
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                    bottom: Radius.circular(16),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    va?.language?.name ?? '',
                                                    textAlign: TextAlign.center,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          va?.name?.full ?? '',
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        //* Appeared in TITLE
                        Visibility(
                          visible: data?.media?.edges?.isNotEmpty ?? false,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Appeared in',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //* APPEARED
                        Visibility(
                          visible: data?.media?.edges?.isNotEmpty ?? false,
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              scrollDirection: Axis.horizontal,
                              itemCount: data?.media?.edges?.length ?? 0,
                              itemBuilder: (context, index) {
                                final relatedAnimeData =
                                    data?.media?.edges?.elementAt(index)?.node;
                                return Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Stack(
                                          children: [
                                            GestureDetector(
                                              onTap: () => context.pushNamed(
                                                AppRouteConstant
                                                    .MediaScreen.name,
                                                pathParameters: {
                                                  'id': (relatedAnimeData?.id ??
                                                          0)
                                                      .toString(),
                                                  'title': relatedAnimeData
                                                          ?.title
                                                          ?.userPreferred ??
                                                      '',
                                                },
                                              ),
                                              child: CachedNetworkImage(
                                                height: 130,
                                                width: 100,
                                                fit: BoxFit.cover,
                                                imageUrl: relatedAnimeData
                                                        ?.coverImage?.large ??
                                                    '',
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
                                                    relatedAnimeData
                                                            ?.format?.name ??
                                                        '',
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                          relatedAnimeData
                                                  ?.title?.userPreferred ??
                                              '',
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
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }

  void _toggleFav(bool flag) async {
    final client = ref.read(clientProvider);
    if (client == null) return;
    final res = await client
        .request(GToggleFavouriteReq(
          (b) => b..vars.characterId = widget.id,
        ))
        .first;
    final req = GCharacterDetailQueryReq((b) => b
      ..vars.id = widget.id
      ..vars.page = 1);
    if (res.hasErrors) return;

    final cache = client.cache.readQuery(req);
    client.cache.writeQuery(
      req,
      cache!.rebuild(
        (p) => p..Character.isFavourite = !flag,
      ),
    );
  }
}
