import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/provider/provider.dart';

const _tabStyle = TextStyle(fontSize: 15);

final _titleStyle = TextStyle(
  fontSize: 13,
  color: Colors.grey.shade50,
  fontWeight: FontWeight.w500,
  shadows: const [
    Shadow(color: Colors.black, blurRadius: 1.5, offset: Offset(1, 0)),
    Shadow(color: Colors.black, blurRadius: 1.5, offset: Offset(0, 1)),
    Shadow(color: Colors.black, blurRadius: 1.5, offset: Offset(-1, 0)),
    Shadow(color: Colors.black, blurRadius: 1.5, offset: Offset(0, -1))
  ],
);

class OtherSearch extends StatefulWidget {
  const OtherSearch({super.key});

  @override
  State<OtherSearch> createState() => _OtherSearchState();
}

class _OtherSearchState extends State<OtherSearch> {
  final searchTextController = TextEditingController();

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  void clearSearchBar() => searchTextController.clear();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppTheme.background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: TextField(
              controller: searchTextController,
              onSubmitted: (v) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'What are you looking for?',
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
                isDense: false,
                suffixIcon: IconButton(
                  onPressed: clearSearchBar,
                  icon: const Icon(
                    Icons.backspace_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(24),
              child: TabBar(
                padding: EdgeInsets.only(top: 10),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.grey,
                indicatorWeight: 1,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text('Character', style: _tabStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text('Staff', style: _tabStyle),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            CharacterSearchTab(search: searchTextController),
            StaffSearchTab(search: searchTextController),
            // const Text('User', style: _tabStyle),
          ],
        ),
      ),
    );
  }
}

class CharacterSearchTab extends ConsumerWidget {
  final TextEditingController search;
  const CharacterSearchTab({super.key, required this.search});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.read(clientProvider);
    return Operation(
      client: client!,
      operationRequest: GCharacterSearchQueryReq(
        (b) => b..vars.search = search.text,
      ),
      builder: (context, response, error) {
        if (response?.loading ?? true) {
          return const LoadingGridView();
        } else {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16)
                .copyWith(top: 8, bottom: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isTablet ? 4 : 3,
              childAspectRatio: 2 / 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: response?.data?.Page?.characters?.length ?? 0,
            itemBuilder: (context, index) {
              final character =
                  response?.data?.Page?.characters?.elementAt(index);
              return GestureDetector(
                onTap: () => CharacterDetailRoute(
                  id: character?.id ?? -1,
                  name: character?.name?.userPreferred ?? '--',
                ).push(context),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          width: 80,
                          height: 100,
                          imageUrl: character?.image?.large ?? '',
                          errorWidget: (context, url, error) {
                            return CachedNetworkImage(
                              fit: BoxFit.cover,
                              width: 80,
                              height: 100,
                              imageUrl: character?.image?.medium ?? '',
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          character?.name?.userPreferred ?? '',
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: _titleStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}

class StaffSearchTab extends ConsumerWidget {
  final TextEditingController search;
  const StaffSearchTab({super.key, required this.search});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.read(clientProvider);
    return Operation(
      client: client!,
      operationRequest: GStaffSearchQueryReq(
        (b) => b..vars.search = search.text,
      ),
      builder: (context, response, error) {
        if (response?.loading ?? true) {
          return const LoadingGridView();
        } else {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16)
                .copyWith(top: 8, bottom: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isTablet ? 4 : 3,
              childAspectRatio: 2 / 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: response?.data?.Page?.staff?.length ?? 0,
            itemBuilder: (context, index) {
              final staff = response?.data?.Page?.staff?.elementAt(index);
              return GestureDetector(
                onTap: () => context.pushNamed(
                  AppRouteConstant.VAScreen.name,
                  pathParameters: {'id': (staff?.id ?? -1).toString()},
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          width: 80,
                          height: 100,
                          imageUrl: staff?.image?.large ?? '',
                          errorWidget: (context, url, error) {
                            return CachedNetworkImage(
                              fit: BoxFit.cover,
                              width: 80,
                              height: 100,
                              imageUrl: staff?.image?.medium ?? '',
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          staff?.name?.userPreferred ?? '',
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: _titleStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}

class LoadingGridView extends StatelessWidget {
  const LoadingGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16)
          .copyWith(top: 8, bottom: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isTablet ? 4 : 3,
        childAspectRatio: 2 / 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.white30,
          highlightColor: Colors.black12,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        );
      },
    );
  }
}
