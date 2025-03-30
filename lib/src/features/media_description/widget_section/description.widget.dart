import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';

class MediaDescription extends StatefulWidget {
  const MediaDescription({
    super.key,
    required this.data,
  });

  final GMediaDetailQueryData_Media? data;

  @override
  State<MediaDescription> createState() => _MediaDescriptionState();
}

class _MediaDescriptionState extends State<MediaDescription> {
  bool showDescription = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () => setState(() => showDescription = !showDescription),
        child: Column(
          children: [
            Text(
              widget.data?.description
                      ?.replaceAll('<br><br>', '\n')
                      .replaceAll('<br>', '\n')
                      .replaceAll('<b>', '')
                      .replaceAll('</b>', '')
                      .replaceAll('<i>', '')
                      .replaceAll('</i>', '')
                      .replaceAll('\n\n', '\n') ??
                  '',
              textAlign: TextAlign.justify,
              maxLines: showDescription ? null : 7,
            ),
            Icon(
              showDescription ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
