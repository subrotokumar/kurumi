import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/provider/image_trace.provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ImageSearchScreen extends ConsumerStatefulWidget {
  const ImageSearchScreen({super.key});

  @override
  ConsumerState<ImageSearchScreen> createState() => _ImageSearchScreenState();
}

String cleanFilename(String filename) {
  var name = filename.replaceAll(RegExp(r'^\[.*?\]\s*'), '');
  name = name.replaceAll(
    RegExp(r'\.(mp4|mkv|avi|flv|mov|wmv)$', caseSensitive: false),
    '',
  );
  name = name.replaceAll(RegExp(r'\([^)]*\)'), '');
  name = name.trim();
  return name;
}

class _ImageSearchScreenState extends ConsumerState<ImageSearchScreen> {
  final imageLinkController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final (height, width) = context.getSize;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Icon(PhosphorIcons.caretLeft()),
        ),
        title: Text('Search By Screenshot'),
        titleTextStyle: Poppins(fontSize: 18, fontWeight: FontWeight.w500),
        centerTitle: true,
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final image = ref.watch(traceImageProvider)?.image;
              return Visibility(
                visible: image != null,
                child: IconButton(
                  onPressed: () =>
                      ref.read(traceImageProvider.notifier).clear(),
                  icon: Icon(PhosphorIcons.eraser(PhosphorIconsStyle.fill)),
                ),
              );
            },
          ),
        ],
        scrolledUnderElevation: 0,
      ),
      body: SizedBox.expand(
        child: SafeArea(
          child: Consumer(
            builder: (context, ref, child) {
              final traceData = ref.watch(traceImageProvider);
              final uploadImage = ref
                  .read(traceImageProvider.notifier)
                  .uploadImage;

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      setState(() => isLoading = true);
                      await uploadImage();
                      setState(() => isLoading = false);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      width: width,
                      height: width * 2 / 3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white30),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Visibility(
                        visible: traceData?.image == null,
                        replacement: Image.memory(
                          traceData?.image ?? Uint8List.fromList([]),
                          fit: BoxFit.cover,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                  PhosphorIconsRegular.googlePhotosLogo,
                                  size: 40,
                                )
                                .animate(
                                  onComplete: (c) => c.repeat(),
                                  delay: 1.seconds,
                                )
                                .rotate(
                                  duration: isLoading ? 1.seconds : 4.seconds,
                                ),
                            Gap(8),
                            Text(
                              isLoading
                                  ? 'Please wait..'
                                  : 'Upload a picture to search',
                              style: Poppins(
                                fontSize: 16,
                                color: Colors.white.withValues(alpha: 0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: traceData?.result.length ?? 0,
                      itemBuilder: (context, index) {
                        final item = traceData?.result.elementAt(index);
                        return GestureDetector(
                          onTap: () => context.pushNamed(
                            AppRouteConstant.MediaScreen.name,
                            pathParameters: {
                              'id': (item?.anilist ?? 0).toString(),
                              'title': item?.filename ?? '',
                            },
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 10,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white10.withValues(alpha: .1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: CachedNetworkImage(
                                    imageUrl: item?.image ?? '',
                                    height: 80,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Gap(10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: width * .55,
                                      child: Text(
                                        cleanFilename(item?.filename ?? ''),
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Text(
                                      'Episode ${item?.episode ?? 'not available'}',
                                      style: TextStyle(
                                        color: item?.episode != null
                                            ? Colors.lightBlueAccent
                                            : Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    color: kTransparentColor,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Powered by trace.moe',
                      style: Poppins(color: Colors.white60),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
