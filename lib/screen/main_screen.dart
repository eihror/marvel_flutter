import 'package:flutter/material.dart';
import 'package:movies/screen/character/character_screen.dart';
import 'package:movies/screen/comic/comic_screen.dart';
import 'package:movies/screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;

  PreferredSizeWidget _getCurrentAppBar() {
    final appBarList = [
      AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Marvel"),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Characters"),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Comics"),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
    ];

    return appBarList[currentPage];
  }

  Widget _getCurrentScreen() {
    final screenList = [
      const HomeScreen(),
      const CharacterScreen(),
      const ComicScreen()
    ];

    return screenList[currentPage];
  }

  void _changeCurrentPage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  List<Widget> _getDestinations() {
    return [
      NavigationDestination(icon: Icon(Icons.home), label: "Home"),
      NavigationDestination(icon: Icon(Icons.person), label: "Characters"),
      NavigationDestination(icon: Icon(Icons.book), label: "Comics")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCurrentAppBar(),
      body: _getCurrentScreen(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPage,
        onDestinationSelected: _changeCurrentPage,
        destinations: _getDestinations(),
      ),
    );
  }
}
