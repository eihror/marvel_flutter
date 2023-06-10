import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies/component/character/character_list_item.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  Timer? _textFieldSearchDebounce;

  void _onTextChanged(String text) {
    if (_textFieldSearchDebounce?.isActive ?? false) {
      _textFieldSearchDebounce?.cancel();
    }
    _textFieldSearchDebounce = Timer(const Duration(milliseconds: 500), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: _onTextChanged,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                ),
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: Colors.black,
                hintText: "Search for your favorite hero"),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.67,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CharacterListItem(
                    cardWidth: 200,
                    cardHeight: 300,
                  );
                }),
          ),
        ),
      ],
    );
  }
}
