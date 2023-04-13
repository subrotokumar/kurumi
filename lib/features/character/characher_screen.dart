import 'package:anilist/media_detail_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/main.dart';
import 'package:line_icons/line_icon.dart';
import 'package:anilist/toggle_favourite.dart';

class CharacterScreen extends StatelessWidget {
  CharacterScreen({
    required this.id,
    required this.name,
    required this.characterData,
    required this.index,
    super.key,
  });
  final int id;
  final String name;
  final GMediaDetailQueryData_Media_characters_edges? characterData;
  final int index;

  @override
  Widget build(BuildContext context) {
    bool showDescription = false;
    Size size = MediaQuery.of(context).size;
    bool? isFav = characterData?.node?.isFavourite;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              surfaceTintColor: AppTheme.background,
              elevation: 0,
              backgroundColor: AppTheme.background,
              actions: [
                Consumer(builder: (context, ref, child) {
                  final client = ref.watch(clientProvider);

                  return StatefulBuilder(builder: (context, setState) {
                    return TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      onPressed: () async {
                        // print(id);
                        await client!
                            .request(
                              GToggleFavouriteReq(
                                (b) => b..vars.characterId = id,
                              ),
                            )
                            .first;
                        final req = GMediaDetailQueryReq(
                          (b) => b
                            ..vars.id = id
                            ..vars.limit = 5
                            ..vars.page = 1
                            ..vars.perPage = 10,
                        );
                        final cache = client.cache.readQuery(req);
                        final update = cache?.rebuild((p0) {
                          return p0
                            ..Media.characters.edges[index]?.rebuild((p0) => p0
                              ..node.isFavourite =
                                  isFav == null ? isFav : !isFav!);
                        });
                        client.cache.writeQuery(req, update);
                        setState(() => isFav = isFav == null ? isFav : !isFav!);
                      },
                      icon: LineIcon.heartAlt(
                        color: (isFav ?? false) ? Colors.redAccent : null,
                      ),
                      label: Text('${characterData?.node?.favourites ?? 0}'),
                    );
                  });
                }),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 12, 20, 10),
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
                            characterData?.node?.name?.full ?? '',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.green.shade300,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          characterData?.role?.name ?? '',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.amber.shade100,
                          ),
                        ),
                        Spacer(),
                        Visibility(
                          visible:
                              characterData?.node?.dateOfBirth?.month != null &&
                                  characterData?.node?.dateOfBirth?.day != null,
                          child: Builder(builder: (context) {
                            final t = DateFormat()
                                .format(DateTime(
                                    2000,
                                    characterData?.node?.dateOfBirth?.month ??
                                        0,
                                    characterData?.node?.dateOfBirth?.day ?? 0))
                                .toString()
                                .substring(
                                  0,
                                );
                            return RichText(
                              text: TextSpan(
                                text: ' Date of Birth : ',
                                style: TextStyle(),
                                children: [
                                  TextSpan(
                                    text: '${t.substring(0, t.indexOf(','))}',
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                        Visibility(
                          visible: characterData?.node?.age != null,
                          child: RichText(
                            text: TextSpan(
                              text: ' Age : ',
                              style: TextStyle(),
                              children: [
                                TextSpan(
                                  text: characterData?.node?.age ?? '',
                                )
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: characterData?.node?.gender != null,
                          child: RichText(
                            text: TextSpan(
                              text: ' Gender : ',
                              style: TextStyle(),
                              children: [
                                TextSpan(
                                  text: characterData?.node?.gender ?? '',
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Hero(
                    tag: '${characterData?.id ?? ''}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: characterData?.node?.image?.large ?? '',
                        fit: BoxFit.cover,
                        width: 120,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: characterData?.node?.description != null,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.grey, width: 0.5),
                ),
                margin: EdgeInsets.all(15),
                color: AppTheme.secondaryColor,
                child: StatefulBuilder(
                  builder: (context, setState) => Container(
                    padding: EdgeInsets.all(10),
                    constraints: !showDescription
                        ? BoxConstraints(maxHeight: 300)
                        : BoxConstraints(),
                    child: GestureDetector(
                      onTap: () {
                        setState(() => showDescription = !showDescription);
                      },
                      child: Markdown(
                        padding: EdgeInsets.all(0),
                        data: characterData?.node?.description
                                .toString()
                                .replaceAll('\n', '\n\n')
                                .replaceAll('~', '_') ??
                            '',
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        selectable: true,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: characterData?.voiceActors?.isNotEmpty ?? false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            Visibility(
              visible: characterData?.voiceActors?.isNotEmpty ?? false,
              child: SizedBox(
                height: 145,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 85,
                      height: 145,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: CachedNetworkImage(
                                  imageUrl: characterData?.voiceActors?[index]
                                          ?.image?.medium ??
                                      '',
                                  width: 80,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(16))),
                                  child: Center(
                                    child: Text(
                                      characterData?.voiceActors?[index]
                                              ?.languageV2 ??
                                          '',
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            characterData?.voiceActors?[index]?.name?.full ??
                                '',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: (characterData?.voiceActors?.length ?? 0),
                ),
              ),
            ),
            Visibility(
              visible: characterData?.node?.media?.nodes?.isNotEmpty ?? false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
            Visibility(
              visible: characterData?.node?.media?.nodes?.isNotEmpty ?? false,
              child: Container(
                height: 200,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: characterData?.node?.media?.nodes?.length ?? 0,
                  itemBuilder: (context, index) {
                    final relatedAnimeData =
                        characterData?.node?.media?.nodes?.elementAt(index);
                    return Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 12),
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
                                    params: {
                                      'id': (relatedAnimeData?.id ?? 0)
                                          .toString(),
                                      'title': relatedAnimeData
                                              ?.title?.userPreferred ??
                                          '',
                                    },
                                  ),
                                  child: CachedNetworkImage(
                                    height: 130,
                                    width: 100,
                                    fit: BoxFit.cover,
                                    imageUrl:
                                        relatedAnimeData?.coverImage?.large ??
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
                                        relatedAnimeData?.format?.name ?? '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 35,
                            child: Text(
                              relatedAnimeData?.title?.userPreferred ?? '',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
