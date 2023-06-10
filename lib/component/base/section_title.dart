import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final Widget title;
  final EdgeInsetsGeometry padding;

  const SectionTitle({
    Key? key,
    required this.title,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          title,
          Spacer(
            flex: 1,
          ),
          Icon(Icons.trending_flat),
        ],
      ),
    );
  }
}
