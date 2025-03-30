import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/news/models/item.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:share_plus/share_plus.dart';

class NewsDetailScreen extends ConsumerStatefulWidget {
  final Item data;
  const NewsDetailScreen({required this.data, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      NewsDetailScreenState();
}

class NewsDetailScreenState extends ConsumerState<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final pubDate = widget.data.pubDate.toString();

    DateFormat dateFormat = DateFormat("EEE, dd MMM yyyy HH:mm:ss Z");
    DateTime parsedPubDate = dateFormat.parse(pubDate, true).add(7.hours);

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
        titleTextStyle: Poppins(fontSize: 24),
        scrolledUnderElevation: 0,
        backgroundColor: kTransparentColor,
        actions: [
          Visibility(
            visible: widget.data.link != null,
            child: IconButton(
              onPressed: () {
                Share.shareUri(Uri.parse(widget.data.link ?? ''));
              },
              icon: const Icon(
                Icons.ios_share_rounded,
                color: Colors.white54,
              ),
            ),
          ),
          const Gap(5),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: CachedNetworkImage(
                      height: 30,
                      width: 30,
                      imageUrl:
                          'https://img.utdstc.com/icon/883/dd7/883dd7e9516b18ff5e08a75c91a45ab71c41f15c006b8b94aa37ab73f7c8dcdf:200',
                    ),
                  ),
                  const Gap(10),
                  Text(
                    'News - MyAnimeList',
                    style: Poppins(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                widget.data.title ?? '',
                style: Poppins(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                dateFormat.format(parsedPubDate),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white60,
                ),
              ),
            ),
            const Gap(30),
            SizedBox(
              width: w,
              child: Hero(
                tag: widget.data.thumbnail ?? widget.data.guid ?? '',
                child: CachedNetworkImage(
                  imageUrl: widget.data.thumbnail ?? '',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                widget.data.description ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                ),
              ),
            ),
            const Gap(40),
            Visibility(
              visible: widget.data.link != null,
              child: GestureDetector(
                onTap: () {
                  launchUrlString(widget.data.link ?? '');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white30,
                      width: 0.5,
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.format_align_left,
                        size: 18,
                        color: Colors.white54,
                      ),
                      Gap(6),
                      Text('View More'),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(50),
          ],
        ),
      ),
    );
  }
}
