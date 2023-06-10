import 'package:flutter/material.dart';

class CreatorListItem extends StatelessWidget {
  const CreatorListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Image.network(
        "https://picsum.photos/250?image=3",
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
    );
  }
}
