import 'package:anilist/anilist.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/provider/provider.dart';

class StudioSelectorPage extends StatefulWidget {
  const StudioSelectorPage({super.key});

  @override
  State<StudioSelectorPage> createState() => _StudioSelectorPageState();
}

class _StudioSelectorPageState extends State<StudioSelectorPage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search Studio',
          ),
        ),
      ),
      body: Consumer(builder: (context, ref, child) {
        final client = ref.watch(clientProvider);
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Operation(
            client: client!,
            operationRequest: GSearchstudiosQueryReq(
              (b) => b
                ..vars.search = controller.text
                ..vars.page = 1
                ..vars.perPage = 50,
            ),
            builder: (context, response, error) {
              if (response?.loading ?? true) {
                return Center(
                  child: Assets.lotties.loadingGifAnimation.lottie(width: 200),
                );
              } else {
                log.d(response?.data);
                final data = response?.data?.Page?.studios;
                if (data == null) {
                  return const SizedBox();
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.separated(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.pop(
                          context,
                          data.elementAt(index)?.name,
                        ),
                        child: ListTile(
                          dense: true,
                          tileColor: Colors.white12,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          leading: Text(
                            (index + 1).toString(),
                            style: Poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          title: Text(
                            data.elementAt(index)?.name ?? '',
                            style: Poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                  ),
                );
              }
            },
          ),
        );
      }),
    );
  }
}
