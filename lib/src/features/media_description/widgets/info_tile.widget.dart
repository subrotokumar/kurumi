import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';

class InfoTile extends StatelessWidget {
  final String str1;
  final dynamic str2;
  final String? extra;
  final bool copy;
  const InfoTile(
    this.str1,
    this.str2, {
    this.extra,
    this.copy = false,
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
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                if (!copy) return;
                String title = str2!.toString();
                await Clipboard.setData(ClipboardData(text: title));
                // ignore: use_build_context_synchronously
                showSnackBar(context, 'Copied  \'$title\'');
              },
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                runSpacing: 5,
                children: [
                  Text(
                    str2!.toString() + (extra ?? ''),
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: copy ? Colors.amber.shade50 : Colors.white),
                  ),
                  if (copy)
                    const Icon(
                      Icons.copy,
                      size: 12,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
