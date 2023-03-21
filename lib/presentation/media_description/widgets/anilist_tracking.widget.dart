import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_router.dart';

class AnilistTrackingWidget extends ConsumerWidget {
  const AnilistTrackingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.white)),
                            ),
                            child: Center(child: Text('Add To List')),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Progress')),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border:
                                  Border(left: BorderSide(color: Colors.white)),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20)),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    String value = '0.0';
                                    return AlertDialog(
                                      content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Score',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 150,
                                            child: CupertinoPicker(
                                              magnification: 1.1,
                                              useMagnifier: true,
                                              children: [
                                                for (double i = 0;
                                                    i <= 10.0;
                                                    i = i + 0.1)
                                                  Text('$i '.substring(0, 3)),
                                                Text('10.0')
                                              ],
                                              itemExtent: 30,
                                              onSelectedItemChanged: (v) {
                                                double n = 0 + v * .1;
                                                value = n.toStringAsFixed(1);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () => context.pop(),
                                          child: Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => context.pop(value),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Center(child: Text('Score')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.white),
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate:
                                      DateTime.fromMicrosecondsSinceEpoch(0),
                                  lastDate: DateTime.now(),
                                );
                              },
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20)),
                              child: Center(child: Text('Start Date')),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate:
                                    DateTime.fromMicrosecondsSinceEpoch(0),
                                lastDate: DateTime.now(),
                              );
                            },
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20)),
                            child: Center(child: Text('End Date')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () => context.pop(),
                child: Text('CANCEL'),
              ),
              SizedBox(width: 30),
              OutlinedButton(
                onPressed: () => context.pop(),
                child: Text('APPLY'),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
