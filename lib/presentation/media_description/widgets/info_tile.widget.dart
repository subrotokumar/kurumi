import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String str1;
  final dynamic? str2;
  final String? extra;
  const InfoTile(
    this.str1,
    this.str2, {
    this.extra,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (str2 == null) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              str1,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: Text(
              str2!.toString() + (extra ?? ''),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
