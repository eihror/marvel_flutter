import 'package:flutter/material.dart';

class CharacterListItem extends StatelessWidget {
  final double cardWidth;
  final double cardHeight;

  const CharacterListItem({
    Key? key,
    required this.cardWidth,
    required this.cardHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      borderOnForeground: true,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: cardWidth,
              height: cardHeight,
              image: NetworkImage("https://picsum.photos/250?image=6"),
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: cardWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Testando"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
