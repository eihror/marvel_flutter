import 'package:flutter/material.dart';
import 'package:movies/component/creator/creator_list_item.dart';

class CreatorListSection extends StatelessWidget {
  final List<int> list;

  const CreatorListSection({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
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
            child: CreatorListItem(),
          );
        },
        /*separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },*/
      ),
    );
  }
}
