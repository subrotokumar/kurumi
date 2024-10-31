import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/core.dart';

class MediaGenreSection extends StatelessWidget {
  const MediaGenreSection({
    super.key,
    required this.data,
  });

  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: context.getSize.$2,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          for (int i = 0; i < (data?.genres?.length ?? 0); i++)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              color: Colors.white.withOpacity(0.2),
              margin: const EdgeInsets.only(
                right: 8,
                bottom: 8,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 3,
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
                  child: Text(
                    data?.genres?.elementAt(i) ?? '#',
                    style: Poppins(fontSize: 12, color: Colors.white70),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
