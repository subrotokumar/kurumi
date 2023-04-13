import 'package:anilist/media_detail_query.dart';
import 'package:anilist/medialist_collection.dart';
import 'package:anilist/delete_medialist_entry.dart';
import 'package:anilist/medialist_entry_muation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/main.dart';

class AnilistTrackingWidget extends ConsumerWidget {
  const AnilistTrackingWidget({required this.media, super.key});
  final GMediaDetailQueryData_Media? media;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int? mediaId = media?.id;
    final GMediaDetailQueryData_Media_mediaListEntry? mediaListEntry =
        media?.mediaListEntry;
    var status = mediaListEntry?.status;
    var progress = mediaListEntry?.progress;
    var score = mediaListEntry?.score;

    var startDay = mediaListEntry?.startedAt?.day;
    var startMonth = mediaListEntry?.startedAt?.month;
    var startYear = mediaListEntry?.startedAt?.year;
    DateTime? startDate, completedAt;
    if (startDay != null && startYear != null && startMonth != null)
      startDate = DateTime(startYear, startMonth, startDay, 0, 0);
    var completedDay = mediaListEntry?.completedAt?.day;
    var completedMonth = mediaListEntry?.completedAt?.month;
    var completedYear = mediaListEntry?.completedAt?.year;
    if (completedDay != null && completedYear != null && completedMonth != null)
      completedAt = DateTime(completedYear, completedMonth, completedDay, 0, 0);
    // print(mediaListEntry);
    return SafeArea(
      child: StatefulBuilder(
        builder: (context, setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Consumer(builder: (context, ref, child) {
                    final client = ref.watch(mediaListClientProvider);
                    final userID = ref.watch(userId);
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: PopupMenuButton(
                        itemBuilder: (_) => [
                          PopupMenuItem(
                            child: Text(
                              'Delete Entry',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            onTap: () async {
                              final deleteReq = GDeleteMediaListEntryReq(
                                  (b) => b..vars.id = mediaListEntry?.id);
                              final deleted =
                                  await client?.request(deleteReq).first;
                              if (deleted
                                      ?.data?.DeleteMediaListEntry?.deleted ==
                                  true) {
                                final req = GMediaDetailQueryReq(
                                  (b) => b
                                    ..vars.id = mediaId
                                    ..vars.limit = 5
                                    ..vars.page = 1
                                    ..vars.perPage = 10,
                                );
                                final cache = client?.cache.readQuery(req);
                                final updatedCache = cache?.rebuild(
                                  (b) => b
                                    ..Media.mediaListEntry.replace(
                                          GMediaDetailQueryData_Media_mediaListEntry(
                                              (b) => b
                                                ..id = mediaId
                                                ..mediaId = media?.id
                                                ..userId = userID
                                                ..status = null
                                                ..score = null
                                                ..progress = null
                                                ..progressVolumes = null
                                                ..repeat = null
                                                ..priority = null
                                                ..notes = null
                                                ..startedAt.day = null
                                                ..startedAt.month = null
                                                ..startedAt.year = null
                                                ..completedAt.day = null
                                                ..completedAt.month = null
                                                ..completedAt.year = null),
                                        ),
                                );
                                client?.cache.writeQuery(req, updatedCache);

                                // await mediaListClient?.request(request).first;
                                context.pop();
                              }
                            },
                          ),
                        ],
                        child: Icon(Icons.more_vert_rounded),
                      ),
                    );
                  }),
                ],
              ),
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
                                child: InkWell(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20)),
                                  onTap: () {
                                    GMediaListStatus? newStatus = status;
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: StatefulBuilder(
                                            builder: (context, newState) {
                                              return Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  RadioListTile(
                                                    title: Text('Watching'),
                                                    value: GMediaListStatus
                                                        .CURRENT,
                                                    groupValue: newStatus,
                                                    onChanged: (v) {
                                                      newState(
                                                          () => newStatus = v);
                                                    },
                                                  ),
                                                  RadioListTile(
                                                    title: Text('Completed'),
                                                    value: GMediaListStatus
                                                        .COMPLETED,
                                                    groupValue: newStatus,
                                                    onChanged: (v) {
                                                      newState(
                                                          () => newStatus = v);
                                                    },
                                                  ),
                                                  RadioListTile(
                                                    title: Text('Planning'),
                                                    value: GMediaListStatus
                                                        .PLANNING,
                                                    groupValue: newStatus,
                                                    onChanged: (v) {
                                                      newState(
                                                          () => newStatus = v);
                                                    },
                                                  ),
                                                  RadioListTile(
                                                    title: Text('Dropped'),
                                                    value: GMediaListStatus
                                                        .DROPPED,
                                                    groupValue: newStatus,
                                                    onChanged: (v) {
                                                      newState(
                                                          () => newStatus = v);
                                                    },
                                                  ),
                                                  RadioListTile(
                                                    title: Text('PAUSED'),
                                                    value:
                                                        GMediaListStatus.PAUSED,
                                                    groupValue: newStatus,
                                                    onChanged: (v) {
                                                      newState(
                                                          () => newStatus = v);
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () => context.pop(),
                                              child: Text('CANCEL'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  status = newStatus;
                                                });
                                                context.pop();
                                              },
                                              child: Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      status?.name ?? 'Add To List',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                child: InkWell(
                                  onTap: () {
                                    TextEditingController controller =
                                        TextEditingController();
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        content: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Progress',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            TextField(
                                              controller: controller,
                                              onSubmitted: (v) =>
                                                  setState(() {}),
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Current: ${mediaListEntry?.progress ?? ''}',
                                                border: OutlineInputBorder(),
                                                isDense: true,
                                                // suffixIcon:
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () => context.pop(),
                                            child: Text('CANCEL'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                int? n = int.tryParse(
                                                    controller.text);
                                                if (n == null) return;
                                                if (media?.episodes != null &&
                                                    n >
                                                        (media?.episodes ??
                                                            n)) {
                                                  n = media?.episodes;
                                                }
                                                progress = n ?? progress;
                                              });
                                              context.pop();
                                            },
                                            child: Text('OK'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      progress == null
                                          ? 'Progress'
                                          : progress.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(color: Colors.white)),
                                ),
                                child: InkWell(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20)),
                                  onTap: () async {
                                    String? val = await showDialog(
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
                                                      Text(
                                                          '${i.toStringAsFixed(1)}'),
                                                  ],
                                                  itemExtent: 30,
                                                  onSelectedItemChanged: (v) {
                                                    double n = 0 + v * .1;
                                                    value =
                                                        n.toStringAsFixed(1);
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () => context.pop(),
                                              child: Text('CANCEL'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  context.pop(value),
                                              child: Text('APPLY'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    if (val != null) {
                                      score = double.parse(val);
                                      setState(() {});
                                    }
                                  },
                                  child: Center(
                                    child: Text(
                                      score == null
                                          ? 'Score'
                                          : score!.toStringAsFixed(1),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
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
                                  onTap: () async {
                                    var time = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate:
                                          DateTime.fromMicrosecondsSinceEpoch(
                                              0),
                                      lastDate: DateTime.now(),
                                    );
                                    if (time == null) return;
                                    startDate = time;
                                    setState(() {});
                                  },
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      startDate == null
                                          ? 'Start Date'
                                          : startDate
                                              .toString()
                                              .substring(0, 10),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  var time = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: startDate ??
                                        DateTime.fromMicrosecondsSinceEpoch(0),
                                    lastDate: DateTime.now(),
                                  );
                                  if (time == null) return;
                                  completedAt = time;
                                  setState(() {});
                                },
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20)),
                                child: Center(
                                  child: Text(
                                    completedAt == null
                                        ? 'Completed Date'
                                        : completedAt
                                            .toString()
                                            .substring(0, 10),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
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
                  Consumer(
                    builder: (context, ref, child) {
                      return OutlinedButton(
                        onPressed: () async {
                          final client = ref.read(mediaListClientProvider);
                          final userID = ref.read(userId);
                          var mediaListEntryMutationReq =
                              GMediaListEntryMutationReq(
                            (b) => b
                              ..vars.id = mediaListEntry?.id
                              ..vars.mediaId = mediaId
                              ..vars.status = status
                              ..vars.progress = progress
                              ..vars.score = score
                              ..vars.startedAt.day = startDate?.day
                              ..vars.startedAt.month = startDate?.month
                              ..vars.startedAt.year = startDate?.year
                              ..vars.completedAt.day = completedAt?.day
                              ..vars.completedAt.month = completedAt?.month
                              ..vars.completedAt.year = completedAt?.year,
                          );
                          client?.request(mediaListEntryMutationReq).listen(
                            (response) async {
                              final oldStatus = mediaListEntry?.status;
                              final newStatus =
                                  response.data?.SaveMediaListEntry?.status;
                              final flag = oldStatus != newStatus;
                              final req = GMediaDetailQueryReq(
                                (b) => b
                                  ..vars.id = mediaId
                                  ..vars.limit = 5
                                  ..vars.page = 1
                                  ..vars.perPage = 10,
                              );
                              final cache = client.cache.readQuery(req);
                              final updatedCache = cache?.rebuild(
                                (b) => b
                                  ..Media.mediaListEntry.replace(
                                        GMediaDetailQueryData_Media_mediaListEntry(
                                          (b) => b
                                            ..id = response
                                                .data!.SaveMediaListEntry!.id
                                            ..mediaId = response.data
                                                ?.SaveMediaListEntry?.mediaId
                                            ..userId = userID
                                            ..status = response.data
                                                ?.SaveMediaListEntry?.status
                                            ..score = response
                                                .data?.SaveMediaListEntry?.score
                                            ..progress = response.data
                                                ?.SaveMediaListEntry?.progress
                                            ..progressVolumes = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.progressVolumes
                                            ..repeat = response.data
                                                ?.SaveMediaListEntry?.repeat
                                            ..priority = response.data
                                                ?.SaveMediaListEntry?.priority
                                            ..notes = response
                                                .data?.SaveMediaListEntry?.notes
                                            ..startedAt.day = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.startedAt
                                                ?.day
                                            ..startedAt.month = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.startedAt
                                                ?.month
                                            ..startedAt.year = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.startedAt
                                                ?.year
                                            ..completedAt.day = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.completedAt
                                                ?.day
                                            ..completedAt.month = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.completedAt
                                                ?.month
                                            ..completedAt.year = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.completedAt
                                                ?.year,
                                        ),
                                      ),
                              );
                              client.cache.writeQuery(req, updatedCache);
                              if (flag || true) {
                                final mediaListClient =
                                    ref.read(mediaListClientProvider);
                                final request = GMediaListCollectionReq(
                                  (b) => b
                                    ..vars.status = oldStatus ?? newStatus
                                    ..vars.type = media?.type
                                    ..vars.userId = userID,
                                );

                                await mediaListClient?.request(request).first;
                                context.pop();
                              }
                            },
                          );
                        },
                        child: Text('APPLY'),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
