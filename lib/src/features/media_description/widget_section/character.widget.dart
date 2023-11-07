import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kurumi/src/core/routes/router.dart';

class CharactersWidget extends StatelessWidget {
  const CharactersWidget({
    super.key,
    required this.data,
    required this.size,
  });

  final GMediaDetailQueryData_Media? data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data?.characters?.edges != null &&
          (data?.characters?.edges?.isNotEmpty ?? false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'CHARACTERS',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 140,
            width: size.width,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              scrollDirection: Axis.horizontal,
              itemCount: data?.characters?.edges?.length ?? 0,
              itemBuilder: (context, index) {
                final characterData =
                    data?.characters?.edges?.elementAt(index)?.node;
                return Container(
                  width: 80,
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          HapticFeedback.mediumImpact();
                          CharacterDetailRoute(
                                  id: characterData?.id ?? -1,
                                  name: characterData?.name?.full
                                          ?.replaceAll(' ', '-') ??
                                      'NA')
                              .push(context);
                          // context.pushNamed(
                          //   AppRouteConstant.Character.name,
                          //   pathParameters: {
                          //     'id': (characterData?.id ?? 0).toString(),
                          //     'name': characterData?.name?.full ?? '',
                          //   },
                          //   extra: {
                          //     'data': data?.characters?.edges?.elementAt(index),
                          //     'index': index
                          //   },
                          // );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                            tag: '${characterData?.id ?? ''}',
                            child: CachedNetworkImage(
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                              imageUrl: characterData?.image?.large ??
                                  characterData?.image?.medium ??
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
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
