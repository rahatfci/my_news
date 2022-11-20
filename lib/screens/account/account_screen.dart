import 'package:flutter/material.dart';

import '../../components/bottom_nav.dart';
import '../../components/nav_drawer.dart';
import 'account_body.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: NavigationDrawer.scaffoldKey,
      appBar: AppBar(),
      bottomNavigationBar: const MyBottomNavBar(),
      drawer: const NavigationDrawer(),
      drawerEnableOpenDragGesture: false,
      body: const AccountBody(),
    );
  }
}
