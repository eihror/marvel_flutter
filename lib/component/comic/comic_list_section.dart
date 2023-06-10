import 'package:flutter/material.dart';
import 'package:movies/component/comic/comic_item.dart';

class ComicListSection extends StatelessWidget {
  final List<int> list;

  const ComicListSection({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: (index == 0)
                ? const EdgeInsets.only(left: 16, right: 8)
                : (index == list.length - 1)
                    ? const EdgeInsets.only(right: 16)
                    : const EdgeInsets.only(right: 8),
            child: ComicItem(
              comicWidth: 170,
              comicHeight: 230,
            ),
          );
        },
      ),
    );
  }
}
