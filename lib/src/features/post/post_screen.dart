import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/common/error_screen.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/post/wingets/filter_dialog.dart';
import 'package:kurumi/src/features/post/models/filter_state.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:share_plus/share_plus.dart';

class PostScreen extends ConsumerStatefulWidget {
  const PostScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => PostScreenState();
}

class PostScreenState extends ConsumerState<PostScreen> {
  PostFilterState state = PostFilterState(view: "Global", activity: 'All');
  bool showBar = true;
  @override
  void initState() {
    final sharedPref = ref.read(sharedfPrefProvider);
    final stateValue = sharedPref?.getString("PostFilterState");
    if (stateValue == null) return;
    state = PostFilterState.fromJson(stateValue.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final client = ref.watch(mediaListClientProvider);
    final request = GActivitiesQueryReq(
      (b) => b
        ..vars.hasReplies = true
        ..vars.isFollowing = state.view == 'Following'
        ..vars.activityType = switch (state.activity) {
          "List Progress" => GActivityType.MEDIA_LIST,
          "Text Status" => GActivityType.TEXT,
          _ => null,
        }
        ..vars.page = 1,
    );
    double sidebarWidth = showBar ? 35 : 0;
    return SizedBox(
      width: size.width,
      child: Row(
        children: [
          Container(
            color: kSecondaryColor,
            width: sidebarWidth,
            child: SafeArea(
              child: Column(
                children: [
                  Gap(14),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: SizedBox(
                      child: Icon(PhosphorIconsBold.caretLeft, size: 28),
                    ),
                  ),
                  Gap(10),
                  Divider(),
                  Gap(10),
                  ...["Global", "Following"].map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: isSmartwatch ? 0 : 5,
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(),

                            backgroundColor: e == state.view
                                ? Colors.blue.withValues(alpha: 0.4)
                                : null,
                          ),
                          onPressed: () async {
                            if (e == state.view) return;
                            final newState = state.copyWith(view: e);
                            ref
                                .read(sharedfPrefProvider)
                                ?.setString(
                                  "PostFilterState",
                                  newState.toJson(),
                                );
                            setState(() => state = newState);
                          },
                          child: Text(
                            e,
                            style: Poppins(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(10),
                  Divider(),
                  Gap(10),
                  ...["All", "Text Status", "List Progress"].map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: isSmartwatch ? 0 : 5,
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            backgroundColor: e == state.activity
                                ? Colors.green.withValues(alpha: 0.4)
                                : null,
                          ),
                          onPressed: () async {
                            if (e == state.activity) return;
                            final newState = state.copyWith(activity: e);
                            ref
                                .read(sharedfPrefProvider)
                                ?.setString(
                                  "PostFilterState",
                                  newState.toJson(),
                                );
                            setState(() => state = newState);
                          },
                          child: Text(
                            e,
                            style: Poppins(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width - sidebarWidth,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                scrolledUnderElevation: 0,
                // leading: GestureDetector(
                //   onTap: () => context.pop(),
                //   child: SizedBox(child: Icon(PhosphorIconsBold.caretLeft)),
                // ),
                // leadingWidth: 50,
                leading: SizedBox(),
                leadingWidth: 0,
                titleTextStyle: Poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                actions: [
                  if (false)
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showBar = !showBar;
                        });
                      },
                      icon: Icon(PhosphorIcons.sliders()),
                    ),

                  // IconButton(onPressed: () {}, icon: Icon(PhosphorIcons.notePencil())),
                  if (false)
                    IconButton(
                      onPressed: () async {
                        PostFilterState newState = await showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: AppTheme.secondaryColor.withValues(
                              alpha: 0.9,
                            ),
                            content: PostFilterDialog(state: state),
                          ),
                        );
                        if (newState != state) {
                          setState(() => state = newState);
                          ref
                              .read(sharedfPrefProvider)
                              ?.setString("PostFilterState", newState.toJson());
                        }
                      },
                      icon: Icon(PhosphorIcons.slidersHorizontal()),
                    ),
                  Row(
                    children: [
                      Text(
                        'Activity ',
                        style: Poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Card(
                        child: Text(
                          '  Preview  ',
                          style: Poppins(color: Colors.red),
                        ),
                      ),
                      Gap(20),
                    ],
                  ),
                ],
              ),
              body: RefreshIndicator(
                onRefresh: () async {
                  await client.request(request).first;
                },
                child: Operation(
                  client: client!,
                  operationRequest: request,
                  builder: (context, response, error) {
                    if (response == null || response.loading) {
                      return Center(child: const CircularProgressIndicator());
                    } else if (error != null || response.data == null) {
                      return ErrorScreen();
                    } else {
                      final activities =
                          response.data?.Page?.activities?.toList() ?? [];
                      return ListView.separated(
                        separatorBuilder: (context, index) =>
                            Divider(thickness: .5),
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
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 5,
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: colorFromString(
                                        textActivity?.user?.name ?? '',
                                      ),
                                      radius: 13,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(13),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              listActivity
                                                  ?.user
                                                  ?.avatar
                                                  ?.large ??
                                              '',
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
                                            DateTime.now()
                                                .millisecondsSinceEpoch,
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
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    // child: Text(textActivity?.text ?? ''),
                                    child: AniListRenderer(
                                      content: textActivity?.text ?? '',
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible:
                                      listActivity?.media?.coverImage?.large !=
                                      null,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Colors.white.withValues(
                                            alpha: 0.03,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadiusGeometry.circular(
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15,
                                                        color:
                                                            Colors.blue.shade50,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: title,
                                                          style: Poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
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
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ],
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
                  style: Poppins(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
