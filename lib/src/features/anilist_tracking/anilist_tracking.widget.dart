// ignore_for_file: use_build_context_synchronously
import 'package:anilist/anilist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
    if (startDay != null && startYear != null && startMonth != null) {
      startDate = DateTime(startYear, startMonth, startDay, 0, 0);
    }
    var completedDay = mediaListEntry?.completedAt?.day;
    var completedMonth = mediaListEntry?.completedAt?.month;
    var completedYear = mediaListEntry?.completedAt?.year;
    if (completedDay != null &&
        completedYear != null &&
        completedMonth != null) {
      completedAt = DateTime(completedYear, completedMonth, completedDay, 0, 0);
    }
    // print(mediaListEntry);
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: media?.mediaListEntry != null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final client = ref.watch(mediaListClientProvider);
                    return Padding(
                      padding: const EdgeInsets.only(right: 22, bottom: 8),
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: kBackgroundColor.withValues(
                            alpha: 0.9,
                          ),
                          foregroundColor: Colors.red.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 0,
                          visualDensity: VisualDensity.compact,
                        ),
                        icon: Icon(PhosphorIconsBold.trash, size: 14),
                        label: Text(
                          'Delete Entry',
                          style: Poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () async {
                          final deleteReq = GDeleteMediaListEntryReq(
                            (b) => b..vars.id = mediaListEntry?.id,
                          );
                          final deletedItem = await client
                              ?.request(deleteReq)
                              .first;
                          if (deletedItem
                                  ?.data
                                  ?.DeleteMediaListEntry
                                  ?.deleted ==
                              true) {
                            client
                                ?.request(
                                  GMediaDetailQueryReq(
                                    (b) => b
                                      ..vars.id = mediaId
                                      ..vars.limit = 5
                                      ..vars.page = 1
                                      ..vars.perPage = 10,
                                  ),
                                )
                                .listen((event) {
                                  if (event.data != null) {
                                    context.pop();
                                    return;
                                  }
                                });
                          }
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 50),
            decoration: BoxDecoration(
              color: kBackgroundColor.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(30),
            ),
            child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 5,
                              ),
                              width: double.infinity,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Wrap(
                                    alignment: WrapAlignment.center,
                                    runSpacing: 10,
                                    spacing: 10,
                                    children: GMediaListStatus.values
                                        .map(
                                          (e) => InkWell(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            onTap: () =>
                                                setState(() => status = e),
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 4,
                                                horizontal: 6,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: status == e
                                                    ? Colors.white70
                                                    : Colors.white10,
                                              ),
                                              child: Text(
                                                e.name,
                                                style: Poppins(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: status != e
                                                      ? null
                                                      : Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(5),
                          Card(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 7),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        TextEditingController controller =
                                            TextEditingController();
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            backgroundColor: Color(
                                              0xff272227,
                                            ).withValues(alpha: 0.92),
                                            content: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Progress',
                                                  style: Poppins(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Gap(16),
                                                TextField(
                                                  controller: controller,
                                                  onSubmitted: (v) =>
                                                      setState(() {}),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Current: ${mediaListEntry?.progress ?? ''}',
                                                    border:
                                                        const OutlineInputBorder(),
                                                    isDense: true,
                                                    // suffixIcon:
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () => context.pop(),
                                                child: Text(
                                                  'CANCEL',
                                                  style: Poppins(),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    int? n = int.tryParse(
                                                      controller.text,
                                                    );
                                                    if (n == null) return;
                                                    if (media?.episodes !=
                                                            null &&
                                                        n >
                                                            (media?.episodes ??
                                                                n)) {
                                                      n = media?.episodes;
                                                    }
                                                    progress = n ?? progress;
                                                  });
                                                  context.pop();
                                                },
                                                child: Text(
                                                  'OK',
                                                  style: Poppins(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      child: Center(
                                        child: Text(
                                          progress == null
                                              ? 'Progress'
                                              : '$progress ${media?.type == GMediaType.ANIME ? 'Ep' : 'Ch'}',
                                          style: Poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () async {
                                        String? val = await showDialog(
                                          context: context,
                                          builder: (context) {
                                            String value = '0.0';
                                            return AlertDialog(
                                              backgroundColor: Color(
                                                0xff272227,
                                              ).withValues(alpha: 0.92),
                                              content: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Score',
                                                    style: Poppins(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 150,
                                                    child: CupertinoPicker(
                                                      magnification: 1.1,
                                                      useMagnifier: true,
                                                      itemExtent: 30,
                                                      onSelectedItemChanged:
                                                          (v) {
                                                            double n =
                                                                0 + v * .1;
                                                            value = n
                                                                .toStringAsFixed(
                                                                  1,
                                                                );
                                                          },
                                                      children: [
                                                        for (
                                                          double i = 0;
                                                          i <= 10.0;
                                                          i = i + 0.1
                                                        )
                                                          Text(
                                                            i.toStringAsFixed(
                                                              1,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      context.pop(),
                                                  child: Text(
                                                    'CANCEL',
                                                    style: Poppins(),
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      context.pop(value),
                                                  child: Text(
                                                    'APPLY',
                                                    style: Poppins(),
                                                  ),
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
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              PhosphorIconsFill.star,
                                              size: 14,
                                            ),
                                            Text(
                                              " ${score == null ? ' Score' : score!.toStringAsFixed(1)}",
                                              style: Poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(5),
                          Card(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                            color: Colors.grey.withValues(
                                              alpha: 0.5,
                                            ),
                                            width: 0.5,
                                          ),
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          var time = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate:
                                                DateTime.fromMicrosecondsSinceEpoch(
                                                  0,
                                                ),
                                            lastDate: DateTime.now(),
                                          );
                                          if (time == null) return;
                                          startDate = time;
                                          setState(() {});
                                        },
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            startDate == null
                                                ? 'Start Date'
                                                : startDate
                                                      .toString()
                                                      .substring(0, 10),
                                            style: Poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: startDate == null
                                                  ? 14
                                                  : 16,
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
                                          firstDate:
                                              startDate ??
                                              DateTime.fromMicrosecondsSinceEpoch(
                                                0,
                                              ),
                                          lastDate: DateTime.now(),
                                        );
                                        if (time == null) return;
                                        completedAt = time;
                                        setState(() {});
                                      },
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          completedAt == null
                                              ? 'Completed Date'
                                              : completedAt
                                                    .toString()
                                                    .substring(0, 10),
                                          style: Poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: completedAt == null
                                                ? 14
                                                : 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () => context.pop(),
                          child: const Text('CANCEL'),
                        ),
                        const SizedBox(width: 30),
                        Consumer(
                          builder: (context, ref, child) {
                            return OutlinedButton(
                              onPressed: () async {
                                final client = ref.read(
                                  mediaListClientProvider,
                                );
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
                                        ..vars.startedAt.month =
                                            startDate?.month
                                        ..vars.startedAt.year = startDate?.year
                                        ..vars.completedAt.day =
                                            completedAt?.day
                                        ..vars.completedAt.month =
                                            completedAt?.month
                                        ..vars.completedAt.year =
                                            completedAt?.year,
                                    );
                                client?.request(mediaListEntryMutationReq).listen((
                                  response,
                                ) async {
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
                                                .data!
                                                .SaveMediaListEntry!
                                                .id
                                            ..mediaId = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.mediaId
                                            ..userId = userID
                                            ..status = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.status
                                            ..score = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.score
                                            ..progress = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.progress
                                            ..progressVolumes = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.progressVolumes
                                            ..repeat = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.repeat
                                            ..priority = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.priority
                                            ..notes = response
                                                .data
                                                ?.SaveMediaListEntry
                                                ?.notes
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
                                    final mediaListClient = ref.read(
                                      mediaListClientProvider,
                                    );
                                    final request = GMediaListCollectionReq(
                                      (b) => b
                                        ..vars.status = oldStatus ?? newStatus
                                        ..vars.type = media?.type
                                        ..vars.userId = userID,
                                    );

                                    await mediaListClient
                                        ?.request(request)
                                        .first;
                                    context.pop();
                                  }
                                });
                              },
                              child: const Text('APPLY'),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
