import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/screen/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
