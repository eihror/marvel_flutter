import 'package:flutter/material.dart';

class HomeToolbar extends StatelessWidget {
  final Widget title;

  const HomeToolbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [title],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(48),
            child: Image.asset(
              "assets/images/eu.jpg",
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
