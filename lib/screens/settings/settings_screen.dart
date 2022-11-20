import 'package:flutter/material.dart';
import 'package:my_news/screens/settings/settings_body.dart';

import '../../components/bottom_nav.dart';
import '../../components/nav_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: NavigationDrawer.scaffoldKey,
      appBar: AppBar(),
      bottomNavigationBar: const MyBottomNavBar(),
      drawer: const NavigationDrawer(),
      drawerEnableOpenDragGesture: false,
      body: const SettingsBody(),
    );
  }
}
