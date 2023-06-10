import 'package:flutter/material.dart';
import 'package:movies/component/comic/comic_item.dart';

class ComicScreen extends StatelessWidget {
  const ComicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.67,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
          itemCount: 10,
          itemBuilder: (context, item) {
            return const ComicItem(
              comicWidth: 200,
              comicHeight: 300,
            );
          }),
    );
  }
}
