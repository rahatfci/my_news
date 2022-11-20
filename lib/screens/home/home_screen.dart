import 'package:flutter/material.dart';
import 'package:my_news/screens/home/home_body.dart';

import '../../components/app_bars.dart';
import '../../components/bottom_nav.dart';
import '../../components/nav_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        key: NavigationDrawer.scaffoldKey,
        appBar: homeAppBar(context),
        bottomNavigationBar: const MyBottomNavBar(),
        drawer: const NavigationDrawer(),
        drawerEnableOpenDragGesture: false,
        body: const HomeBody(),
      ),
    );
  }
}
