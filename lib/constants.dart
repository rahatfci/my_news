import 'package:flutter/material.dart';
import 'package:my_news/screens/account/account_body.dart';
import 'package:my_news/screens/home/home_body.dart';
import 'package:my_news/screens/search/search_body.dart';
import 'package:my_news/screens/settings/settings_body.dart';

const kPrimaryColor = Color(0xFFF56A4D);
const kBackgroundColor = Color(0xFFFFfAff);
const kTextColor = Color(0xFF2F3237);

const kDefaultPadding = 20.0;

List<Widget> pages = const [
  HomeBody(),
  SearchBody(),
  SettingsBody(),
  AccountBody()
];
