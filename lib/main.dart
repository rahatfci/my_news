import 'package:flutter/material.dart';
import 'package:my_news/components/app_bar.dart';
import 'package:my_news/components/bottom_nav.dart';
import 'package:my_news/components/nav_drawer.dart';
import 'package:my_news/constants.dart';

import 'components/unlike_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedMenu = ValueNotifier<int>(0);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My News',
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: myAppBar(context),
          bottomNavigationBar: const MyBottomNavBar(),
          drawer: const NavigationDrawer(),
          drawerEnableOpenDragGesture: false,
          body: ValueListenableBuilder(
            builder: (BuildContext context, value, Widget? child) =>
                pages.elementAt(MyApp.selectedMenu.value),
            valueListenable: MyApp.selectedMenu,
          ),
        );
      }),
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: buildMaterialColor(kPrimaryColor),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: kTextColor, fontFamily: 'Raleway'),
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
