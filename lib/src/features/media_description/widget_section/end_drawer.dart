import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/core.dart';

class MediaEndDrawer extends StatefulWidget {
  const MediaEndDrawer({super.key, this.data});
  final GMediaDetailQueryData_Media? data;

  @override
  State<MediaEndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<MediaEndDrawer> {
  @override
  Widget build(BuildContext context) {
    final reviews = widget.data?.reviews?.nodes?.toList() ?? [];
    return Drawer(
      child: Consumer(builder: (context, ref, child) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              scrolledUnderElevation: 0,
              floating: true,
              title: Text(
                'Reviews',
                style: Poppins(),
              ),
            ),
            SliverList.separated(
              itemCount: reviews.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 10,
                  ),
                  onTap: () async {
                    context.push(
                      '/media-review/${reviews.elementAt(index)?.id ?? 0}',
                    );
                  },
                  trailing: SizedBox(
                    child: Text(
                      '${reviews.elementAt(index)?.score ?? 0}',
                      style: Poppins(
                        color: Colors.blueAccent.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  title: Text(
                    'By ${reviews.elementAt(index)?.user?.name}',
                    style: Poppins(
                      fontSize: 14,
                      color: Colors.orange,
                    ),
                  ),
                  subtitle: Text(reviews.elementAt(index)?.summary ?? ''),
                );
              },
            ),
          ],
        );
      }),
    );
  }
}
