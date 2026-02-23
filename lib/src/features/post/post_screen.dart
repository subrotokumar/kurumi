import 'package:anilist/anilist.dart';
import 'package:anilist/src/activities_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/common/error_screen.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// filter:"all"
// hasReplies:true
// isFollowing:false
// page:1
// type:"global"

class PostScreen extends ConsumerStatefulWidget {
  const PostScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => PostScreenState();
}

class PostScreenState extends ConsumerState<PostScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final userID = ref.watch(userId);
    final client = ref.watch(mediaListClientProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await client
              .request(
                GActivitiesQueryReq(
                  (b) => b
                    ..vars.hasReplies = true
                    ..vars.isFollowing = false
                    ..vars.page = 1,
                ),
              )
              .first;
        },
        child: Operation(
          client: client!,
          operationRequest: GActivitiesQueryReq(
            (b) => b
              ..vars.hasReplies = true
              ..vars.isFollowing = false
              ..vars.page = 1,
          ),
          builder: (context, response, error) {
            if (response == null || response.loading) {
              return const CircularProgressIndicator();
            } else if (error != null || response.data == null) {
              return ErrorScreen();
            } else {
              final activities =
                  response.data?.Page?.activities?.toList() ?? [];
              return ListView.separated(
                separatorBuilder: (context, index) => Divider(thickness: .5),
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  final textActivity =
                      GActivitiesQueryData_Page_activities__asTextActivity.fromJson(
                        activities[index]?.toJson() ?? {},
                      );
                  final listActivity =
                      GActivitiesQueryData_Page_activities__asListActivity.fromJson(
                        activities[index]?.toJson() ?? {},
                      );

                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(15),
                              child: CachedNetworkImage(
                                imageUrl:
                                    listActivity?.user?.avatar?.large ?? '',
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(10),
                            Text(
                              textActivity?.user?.name ?? '',
                              style: Poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.blue.shade50,
                              ),
                            ),
                            Gap(10),
                            Text(
                              timeAgoFromUnix(
                                textActivity?.createdAt ??
                                    DateTime.now().millisecondsSinceEpoch,
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
                            child: Text(textActivity?.text ?? ''),
                          ),
                        ),
                        Visibility(
                          visible:
                              listActivity?.media?.coverImage?.large != null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white10.withValues(alpha: 0.05),
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
                                          ? 'Read chapter '
                                          : 'Watched episode ';
                                      return SizedBox(
                                        width: size.width * .6,
                                        child: Text(
                                          '$progress ${listActivity?.progress} of ${listActivity?.media?.title?.userPreferred}',
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Gap(12),
                        Row(
                          children: [
                            _buildSocialIconButton(
                              icon: PhosphorIconsRegular.heart,
                              count: textActivity?.likeCount,
                            ),
                            Gap(10),
                            _buildSocialIconButton(
                              icon: PhosphorIconsRegular.chat,
                              count: textActivity?.replyCount,
                            ),
                            Spacer(),
                            _buildSocialIconButton(
                              icon: PhosphorIconsRegular.shareFat,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  _buildSocialIconButton({required IconData icon, int? count}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(width: 0.8, color: Colors.white24),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 18),
          if (count != null) Gap(5),
          if (count != null)
            Align(
              alignment: Alignment.center,
              child: Text(
                '$count',
                style: Poppins(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
        ],
      ),
    );
  }
}
