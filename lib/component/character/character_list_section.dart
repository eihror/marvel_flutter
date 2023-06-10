import 'package:flutter/material.dart';
import 'package:movies/component/character/character_list_item.dart';

class CharacterListSection extends StatelessWidget {
  final List<int> list;

  const CharacterListSection({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
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
            child: const CharacterListItem(
              cardWidth: 250,
              cardHeight: 300,
            ),
          );
        },
      ),
    );
  }
}
