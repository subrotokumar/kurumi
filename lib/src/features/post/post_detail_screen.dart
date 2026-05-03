import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/common/error_screen.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/post/function/like_toggle.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';

class PostDetailScreen extends ConsumerStatefulWidget {
  final GActivitiesQueryData_Page_activities? post;
  const PostDetailScreen({super.key, this.post});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<PostDetailScreen> {
  GActivitiesQueryData_Page_activities? post;

  @override
  void initState() {
    super.initState();
    post = widget.post;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final textActivity =
        GActivitiesQueryData_Page_activities__asTextActivity.fromJson(
          post?.toJson() ?? {},
        );
    final listActivity =
        GActivitiesQueryData_Page_activities__asListActivity.fromJson(
          post?.toJson() ?? {},
        );

    final client = ref.watch(mediaListClientProvider);
    final mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Container(
          height: size.height - mq.viewInsets.top,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Theme.of(context).iconTheme.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fixedSize: const Size.square(25),
                      side: const BorderSide(color: Colors.white24, width: 0.5),
                    ),
                    onPressed: () => context.pop(),
                    icon: Icon(
                      PhosphorIcons.x(PhosphorIconsStyle.regular),
                      size: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Gap(16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: colorFromString(
                              textActivity?.user?.name ?? '',
                            ),
                            radius: 13,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(13),
                              child: CachedNetworkImage(
                                imageUrl:
                                    listActivity?.user?.avatar?.large ?? '',
                                height: 26,
                                width: 26,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            textActivity?.user?.name ?? '',
                            style: Poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.blue.shade50,
                            ),
                          ),
                          Gap(10),
                          Text(
                            timeAgoFromUnix(
                              textActivity?.createdAt ??
                                  DateTime.now().millisecondsSinceEpoch,
                            ),
                            style: Poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Icon(PhosphorIcons.dotsThree()),
                        ],
                      ),
                      Visibility(
                        visible: textActivity?.text != null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          // child: Text(textActivity?.text ?? ''),
                          child: AniListRenderer(
                            content: textActivity?.text ?? '',
                          ),
                        ),
                      ),
                      Visibility(
                        visible: listActivity?.media?.coverImage?.large != null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: GestureDetector(
                            onTap: () {
                              context.pushNamed(
                                AppRouteConstant.MediaScreen.name,
                                pathParameters: {
                                  'id': (listActivity?.media?.id ?? 0)
                                      .toString(),
                                  'title':
                                      listActivity
                                          ?.media
                                          ?.title
                                          ?.userPreferred ??
                                      '',
                                },
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 9,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white.withValues(alpha: 0.03),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          listActivity
                                              ?.media
                                              ?.coverImage
                                              ?.large ??
                                          '',
                                      height: 120,
                                      width: 90,
                                    ),
                                  ),
                                  Gap(12),
                                  Builder(
                                    builder: (context) {
                                      final progress =
                                          listActivity?.media?.type ==
                                              GMediaType.MANGA
                                          ? 'Read chapter'
                                          : 'Watched episode';
                                      String title =
                                          listActivity
                                              ?.media
                                              ?.title
                                              ?.userPreferred ??
                                          '';
                                      if (title.length > 100) {
                                        title =
                                            "${title.substring(0, 100)} ...";
                                      }
                                      return SizedBox(
                                        width: size.width * .5,
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                                '$progress ${listActivity?.progress} of ',
                                            style: Poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.blue.shade50,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: title,
                                                style: Poppins(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: colorFromString(
                                                    '${listActivity?.media?.title?.userPreferred}',
                                                    lightness: 0.7,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Gap(12),
                      Row(
                        children: [
                          _buildSocialIconButton(
                            onTap: () async {
                              final success = await toggleLikeToPost(
                                client!,
                                id: textActivity?.id,
                              );
                              if (!success ||
                                  textActivity?.likeCount == null ||
                                  textActivity?.isLiked == null) {
                                return;
                              }
                              final newData = post?.toJson();
                              newData?["likeCount"] =
                                  (textActivity?.likeCount ?? 0) +
                                  (textActivity?.isLiked ?? true ? -1 : 1);
                              newData?["isLiked"] = !(textActivity!.isLiked!);
                              post =
                                  GActivitiesQueryData_Page_activities.fromJson(
                                    newData ?? {},
                                  );
                              setState(() {});
                            },
                            icon: PhosphorIconsRegular.heart,
                            count: textActivity?.likeCount,
                            activeIcon: textActivity?.isLiked == true
                                ? PhosphorIconsFill.heart
                                : null,
                            activeColor: textActivity?.isLiked == true
                                ? Colors.red.shade300
                                : null,
                          ),
                          Gap(10),
                          _buildSocialIconButton(
                            onTap: () {},
                            activeColor: Colors.grey,
                            icon: PhosphorIconsRegular.chat,
                            count: textActivity?.replyCount,
                          ),
                          Spacer(),
                          _buildSocialIconButton(
                            icon: PhosphorIconsRegular.shareFat,
                            onTap: () => SharePlus.instance.share(
                              ShareParams(
                                uri: Uri.parse(
                                  "https://anilist.co/activity/${listActivity?.id ?? -1}",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(5),
                    ],
                  ),
                ),
                Divider(thickness: 0.5),
                Gap(5),
                SizedBox(
                  child: Operation(
                    operationRequest: GActivityRepliesQueryReq(
                      (b) => b.vars.id = textActivity?.id,
                    ),
                    client: client!,
                    builder: (context, response, error) {
                      if (response == null || response.loading) {
                        return Shimmer.fromColors(
                          highlightColor: Colors.black26,
                          baseColor: Colors.white38,
                          child: Column(
                            children: [
                              for (
                                int i = 0;
                                i < (textActivity?.replyCount ?? 0);
                                i++
                              )
                                ListTile(
                                  contentPadding: EdgeInsets.all(5),
                                  visualDensity: VisualDensity.compact,
                                  leading: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      30,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white12,
                                    ),
                                  ),
                                  title: Container(
                                    width: 250,
                                    height: 40,
                                    color: Colors.white12,
                                  ),
                                ),
                            ],
                          ),
                        );
                      } else if (error != null || response.data == null) {
                        return ErrorScreen();
                      } else {
                        final replies =
                            response.data?.Page?.activityReplies?.toList() ??
                            [];
                        return ListView.separated(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                              Divider(thickness: .5),
                          itemCount: replies.length,
                          itemBuilder: (context, index) {
                            final reply = replies[index];
                            return ListTile(
                              contentPadding: EdgeInsets.all(0),
                              visualDensity: VisualDensity.compact,
                              leading: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(30),
                                child: CircleAvatar(
                                  backgroundColor: colorFromString(
                                    reply?.user?.name ??
                                        reply?.userId.toString() ??
                                        '',
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: reply?.user?.avatar?.large ?? '',
                                    fit: BoxFit.cover,
                                    height: 60,
                                    width: 60,
                                  ),
                                ),
                              ),
                              title: AniListRenderer(
                                content: reply?.text ?? '',
                              ),

                              subtitle: Text(
                                timeAgoFromUnix(
                                  reply?.createdAt ??
                                      DateTime.now().millisecondsSinceEpoch,
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildSocialIconButton({
    required IconData icon,
    int? count,
    IconData? activeIcon,
    Color? activeColor,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: () {
        if (onTap == null) {
          showSnackBar(context, 'Coming soon. Feature under development!');
          return;
        }
        onTap();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          border: Border.all(width: 0.8, color: Colors.white24),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              activeIcon ?? icon,
              color: activeColor ?? Colors.white,
              size: 18,
            ),
            if (count != null) Gap(5),
            if (count != null)
              Align(
                alignment: Alignment.center,
                child: Text(
                  '$count',
                  style: Poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: activeColor,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
