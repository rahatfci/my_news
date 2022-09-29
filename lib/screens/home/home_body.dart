import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
          child: Text(
        "Home",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      )),
    );
  }
}
