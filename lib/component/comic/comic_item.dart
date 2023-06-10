import 'package:flutter/material.dart';

class ComicItem extends StatelessWidget {
  final double comicWidth;
  final double comicHeight;

  const ComicItem({
    Key? key,
    required this.comicWidth,
    required this.comicHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      elevation: 3,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image(
          width: comicWidth,
          height: comicHeight,
          image: NetworkImage("https://picsum.photos/250?image=5"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
