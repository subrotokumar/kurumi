import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kurumi/src/core/core.dart';

class CharactersWidget extends StatelessWidget {
  const CharactersWidget({super.key, required this.data});

  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Visibility(
      visible:
          data?.characters?.edges != null &&
          (data?.characters?.edges?.isNotEmpty ?? false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'CHARACTERS',
              style: Poppins(fontSize: 20, fontWeight: FontWeight.w500),
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
                final characterData = data?.characters?.edges
                    ?.elementAt(index)
                    ?.node;
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
                            name:
                                characterData?.name?.full?.replaceAll(
                                  ' ',
                                  '-',
                                ) ??
                                'NA',
                          ).push(context);
                        },
                        child: Hero(
                          tag: characterData?.image?.large ?? '',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                              imageUrl:
                                  characterData?.image?.large ??
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
