// ignore_for_file: use_build_context_synchronously
import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/media_description/provider/theme_provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ThemeSection extends StatelessWidget {
  const ThemeSection({
    super.key,
    required this.data,
  });

  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data?.type == GMediaType.ANIME,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(),
            ExpansionTile(
              shape: const RoundedRectangleBorder(side: BorderSide.none),
              initiallyExpanded: false,
              tilePadding: const EdgeInsets.only(right: 10),
              trailing: Icon(PhosphorIcons.musicNote(), color: Colors.white)
                  .animate(onComplete: (c) => c.repeat())
                  .rotate(
                    delay: 3.seconds,
                    duration: 2.seconds,
                  ),
              title: const Text(
                'Themes',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              children: [
                Consumer(builder: (context, ref, child) {
                  final theme = ref.watch(themeProvider(data?.idMal));
                  return theme.when(
                    error: (e, s) => const SizedBox(
                      child: Chip(label: Text('No Data')),
                    ),
                    loading: () => SizedBox(
                      child: Assets.lotties.loadingGifAnimation.lottie(),
                    ).animate().scale(),
                    data: (data) {
                      if (data == null) {
                        return const SizedBox();
                      } else if (data.openings.isEmpty &&
                          data.endings.isEmpty) {
                        return const SizedBox();
                      } else {
                        return SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Visibility(
                                visible: data.openings.isNotEmpty,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Openings',
                                        style: Poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      ...data.openings.map(
                                        (opening) => ListTile(
                                          onTap: () async {
                                            await Clipboard.setData(
                                                ClipboardData(text: opening));
                                            showSnackBar(context,
                                                'Copied  \'$opening\'');
                                          },
                                          dense: true,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          title: Text(
                                            opening,
                                            style: Poppins(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: data.openings.isNotEmpty,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Endings',
                                      style: Poppins(
                                        color: Colors.orange,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    ...data.endings.map(
                                      (ending) => ListTile(
                                        onTap: () async {
                                          await Clipboard.setData(
                                              ClipboardData(text: ending));
                                          showSnackBar(
                                              context, 'Copied  \'$ending\'');
                                        },
                                        dense: true,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        title: Text(
                                          ending,
                                          style: Poppins(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ).animate().fadeIn();
                      }
                    },
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
