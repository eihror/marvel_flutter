import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies/component/base/section_title.dart';
import 'package:movies/component/character/character_list_section.dart';
import 'package:movies/component/comic/comic_list_section.dart';
import 'package:movies/component/creator/creator_list_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SectionTitle(
            title: Text("Creators"),
            padding: EdgeInsets.all(16),
          ),
          CreatorListSection(
            list: [0, 1, 2, 3, 4, 5, 6, 7],
          ),
          SectionTitle(
            title: Text("Characters"),
            padding: EdgeInsets.all(16),
          ),
          CharacterListSection(
            list: [0, 1, 2, 3, 4, 5, 6, 7],
          ),
          SectionTitle(
            title: Text("Comics"),
            padding: EdgeInsets.all(16),
          ),
          ComicListSection(
            list: [0, 1, 2, 3, 4, 5, 6, 7],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
