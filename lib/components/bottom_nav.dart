import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_news/main.dart';

import '../constants.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);
  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  List<BottomNavigationBarItem> nav_items = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.house), label: 'Home'),
    BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.magnifyingGlass), label: 'Search'),
    BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.gear), label: 'Settings'),
  ];
  void onItemTapped(int index) {
    MyApp.selectedMenu.value = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      backgroundColor: kBackgroundColor,
      items: nav_items,
      currentIndex: MyApp.selectedMenu.value,
      selectedItemColor: kPrimaryColor,
      onTap: onItemTapped,
      selectedLabelStyle: const TextStyle(height: 1.3),
      unselectedLabelStyle: const TextStyle(height: 1.3),
    );
  }
}
