import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/core.dart';

class TagSection extends StatefulWidget {
  const TagSection({
    super.key,
    required this.data,
  });

  final GMediaDetailQueryData_Media? data;

  @override
  State<TagSection> createState() => _TagSectionState();
}

class _TagSectionState extends State<TagSection> {
  bool showSpoiler = false;
  @override
  Widget build(BuildContext context) {
    final tagData = widget.data?.tags?.asList();

    if (tagData == null) return Container();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'TAGS',
                style: Poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() => showSpoiler = !showSpoiler),
                child: Text(
                  showSpoiler ? 'Hide Spoilers' : 'Show Spoilers',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: !showSpoiler ? Colors.redAccent : Colors.amber,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        // * TAG SECTION
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              for (int index = 0;
                  index < (widget.data?.tags?.length ?? 0);
                  index++)
                Builder(builder: (context) {
                  bool isSpoiler =
                      (widget.data?.tags?.elementAt(index)?.isMediaSpoiler ??
                          false);
                  if (isSpoiler && !showSpoiler) return Container();
                  return Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.white24,
                        )),
                    child: InkWell(
                      onTap: () {
                        context.pushNamed(
                          AppRouteConstant.SearchScreen.name,
                          extra: {
                            'mediaType': widget.data?.type,
                            'tags': widget.data?.tags?[index]?.name,
                            'hide': true
                          },
                        );
                      },
                      child: Text(
                        '${widget.data?.tags?[index]?.name ?? ''}  ${widget.data?.tags?[index]?.rank ?? '0'}%',
                        style:
                            TextStyle(color: isSpoiler ? Colors.amber : null),
                      ),
                    ),
                  );
                }),
              const SizedBox(width: 20),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
