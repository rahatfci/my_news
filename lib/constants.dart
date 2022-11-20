import 'package:flutter/material.dart';
import 'package:my_news/screens/account/account_screen.dart';
import 'package:my_news/screens/home/home_screen.dart';
import 'package:my_news/screens/search/search_screen.dart';
import 'package:my_news/screens/settings/settings_screen.dart';

const kPrimaryColor = Color(0xFFF56A4D);
const kBackgroundColor = Color(0xFFFFfAff);
const kTextColor = Color(0xFF2F3237);

const kDefaultPadding = 20.0;

List<Widget> screens = const [
  HomeScreen(),
  SearchScreen(),
  SettingsScreen(),
  AccountScreen()
];
