import 'package:flutter/material.dart';
import 'package:my_news/components/app_bars.dart';
import 'package:my_news/screens/search/search_body.dart';

import '../../components/bottom_nav.dart';
import '../../components/nav_drawer.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        key: NavigationDrawer.scaffoldKey,
        appBar: searchAppbar(context),
        bottomNavigationBar: const MyBottomNavBar(),
        drawerEnableOpenDragGesture: false,
        drawer: const NavigationDrawer(),
        body: const SearchBody(),
      ),
    );
  }
}
