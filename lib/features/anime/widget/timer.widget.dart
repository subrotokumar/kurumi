import 'dart:async';

import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({required this.time, super.key});
  final int? time;

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int days = 0;
  int hours = 0;
  int minutes = 0;
  int secs = 0;

  Timer? timer;
  int different = 0;
  @override
  void initState() {
    super.initState();
    int mm = 60;
    int hh = 3600;
    int dd = 3600 * 24;
    if (widget.time == null) return;
    DateTime time = DateTime.fromMillisecondsSinceEpoch(widget.time! * 1000);
    different =
        (time.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch) ~/
            1000;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      different = (time.millisecondsSinceEpoch -
              DateTime.now().millisecondsSinceEpoch) ~/
          1000;
      if (different <= 0) {
        timer.cancel();
        return;
      }
      int diff = different;
      days = diff ~/ dd;
      diff = diff % dd;
      hours = diff ~/ hh;
      diff = diff % hh;
      minutes = diff ~/ mm;
      secs = diff % mm;
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: different > 60,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white24, width: 0.5),
          color: Colors.black38,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (days > 0) Text('$days : ', style: textStyle),
            if (hours > 0) Text('$hours : ', style: textStyle),
            if (minutes > 0)
              Text(minutes < 10 ? '0$minutes : ' : '$minutes : ',
                  style: textStyle),
            if (secs > 0)
              Text(secs < 10 ? '0$secs' : '$secs', style: textStyle),
          ],
        ),
      ),
    );
  }
}
