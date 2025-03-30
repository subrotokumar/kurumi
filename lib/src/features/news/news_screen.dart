import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/news/news_detail_screen.dart';
import 'package:kurumi/src/features/news/provider/news_provider.dart';
import 'package:intl/intl.dart';

class NewsScreen extends ConsumerStatefulWidget {
  const NewsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewsScreenState();
}

class _NewsScreenState extends ConsumerState<NewsScreen> {
  int? lastOpened;

  @override
  void initState() {
    super.initState();
    refresh();
  }

  refresh() async {
    await Future.delayed(1.seconds);
    ref.invalidate(newsProvider);
  }

  @override
  Widget build(BuildContext context) {
    final (_, w) = context.getSize;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white54,
          ),
        ),
        title: const Text('News'),
        centerTitle: true,
        titleTextStyle: Poppins(fontSize: 24, fontWeight: FontWeight.bold),
        scrolledUnderElevation: 0,
        backgroundColor: kTransparentColor,
      ),
      body: SafeArea(
        child: SizedBox(
          width: w,
          child: Consumer(
            builder: (context, ref, child) {
              return ref.watch(newsProvider).when(
                    data: (data) {
                      final list = data.rss?.channel?.item ?? [];
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 20,
                        ),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final entry = list.elementAt(index);
                          final pubDate =
                              list.elementAt(index).pubDate.toString();
                          DateFormat dateFormat =
                              DateFormat("EEE, dd MMM yyyy HH:mm:ss Z");
                          DateTime? parsedPubDate =
                              dateFormat.tryParse(pubDate, true)?.add(7.hours);
                          DateTime now = DateTime.now();
                          Duration diff = now.difference(parsedPubDate ?? now);
                          String diffStr = '';
                          if (diff.inDays > 0) {
                            diffStr = '${diff.inDays}d';
                          } else if (diff.inHours > 0) {
                            diffStr = '${diff.inHours}h';
                          } else if (diff.inMinutes > 0) {
                            diffStr = '${diff.inMinutes}m';
                          }
                          return InkWell(
                            splashColor: Colors.white.withOpacity(0.06),
                            onTap: () => setState(() {
                              lastOpened = index;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => NewsDetailScreen(data: entry),
                                ),
                              );
                            }),
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              height: 160,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(
                                  lastOpened == index ? 0.05 : 0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 0.5,
                                  color: lastOpened == index
                                      ? Colors.white30
                                      : Colors.transparent,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          entry.title ?? '',
                                          maxLines: 3,
                                          style: Poppins(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                        ),
                                        child: Text(
                                          diffStr,
                                          style: Poppins(
                                            fontSize: 13,
                                            color: Colors.white60,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Gap(10),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 3,
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              entry.description ?? '',
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.white60,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Gap(8),
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.topCenter,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Hero(
                                                tag: entry.thumbnail ??
                                                    entry.guid ??
                                                    index,
                                                child: CachedNetworkImage(
                                                  width: 70,
                                                  height: 70,
                                                  fit: BoxFit.cover,
                                                  imageUrl:
                                                      entry.thumbnail ?? '',
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
                          );
                        },
                        separatorBuilder: (context, index) => Center(
                          child: SizedBox(
                            width: .7 * w,
                            child: const Divider(thickness: .3),
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Center(
                        child: Column(
                          children: [
                            Assets.lotties.ufo.lottie(fit: BoxFit.contain),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'No news available',
                                textAlign: TextAlign.center,
                                style: Poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () => Center(child: LoadingWidget),
                  );
            },
          ),
        ),
      ),
    );
  }
}
