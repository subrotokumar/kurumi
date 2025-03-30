import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/routes/router.dart';

class MediaGenreSection extends StatelessWidget {
  const MediaGenreSection({
    super.key,
    required this.size,
    required this.data,
  });

  final Size size;
  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          for (int i = 0; i < (data?.genres?.length ?? 0); i++)
            Builder(
              builder: (context) => Card(
                margin: const EdgeInsets.only(
                  right: 8,
                  bottom: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: InkWell(
                      onTap: () {
                        context.pushNamed(
                          AppRouteConstant.SearchScreen.name,
                          extra: {
                            'mediaType': data?.type,
                            'genre': data?.genres?.elementAt(i),
                            'hide': true,
                          },
                        );
                      },
                      child: Text(data?.genres?.elementAt(i) ?? '#')),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
