// ignore_for_file: constant_identifier_names

import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';

enum SearchView { LIST, GRID }

extension ColorExtension on GMediaListStatus {
  Color get statusColor {
    switch (this) {
      case GMediaListStatus.CURRENT:
        return Colors.green.shade200;
      case GMediaListStatus.PLANNING:
        return Colors.orange.shade200;
      case GMediaListStatus.COMPLETED:
        return Colors.blue.shade200;
      case GMediaListStatus.PAUSED:
        return Colors.pinkAccent.shade200;
      case GMediaListStatus.DROPPED:
        return Colors.yellow.shade200;
      default:
        return Colors.grey;
    }
  }

  Icon get statusIcon {
    switch (this) {
      case GMediaListStatus.CURRENT:
        return Icon(Icons.play_arrow, color: statusColor, size: 15);
      case GMediaListStatus.PLANNING:
        return Icon(Icons.calendar_month_sharp, color: statusColor, size: 15);
      case GMediaListStatus.COMPLETED:
        return Icon(Icons.download_done_sharp, color: statusColor, size: 15);
      case GMediaListStatus.PAUSED:
        return Icon(Icons.pause, color: statusColor, size: 15);
      case GMediaListStatus.DROPPED:
        return Icon(Icons.unarchive, color: statusColor, size: 15);
      default:
        return Icon(Icons.video_stable_rounded, color: statusColor, size: 15);
    }
  }
}
