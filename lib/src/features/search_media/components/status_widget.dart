import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/enum/enum.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key, required this.data, this.background});

  final Color? background;
  final GSearchAnimeQueryData_Page_media? data;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final status = data?.mediaListEntry?.status;
      if (status == null) {
        return const Card();
      }
      return Card(
        elevation: 0,
        color: background,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: status.statusColor, width: 0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              status.statusIcon,
              const SizedBox(width: 1),
              Text(
                '${status.name[0]}${status.name.substring(1).toLowerCase()}',
                style: TextStyle(
                  color: status.statusColor,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
