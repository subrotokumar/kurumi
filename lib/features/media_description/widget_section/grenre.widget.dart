import 'package:anilist/media_detail_query.dart';
import 'package:flutter/material.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          for (int i = 0; i < (data?.genres?.length ?? 0); i++)
            Builder(
              builder: (context) => Card(
                margin: EdgeInsets.only(
                  right: 8,
                  bottom: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: Text(data?.genres?.elementAt(i) ?? '#'),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
