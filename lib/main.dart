import 'package:flutter/material.dart';
import 'package:my_news/constants.dart';

import 'components/unlike_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedMenu = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My News',
      home: ValueListenableBuilder(
        valueListenable: MyApp.selectedMenu,
        builder: (BuildContext context, int value, Widget? child) =>
            screens.elementAt(MyApp.selectedMenu.value),
      ),
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
