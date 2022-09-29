import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
          child: Text(
        "Search",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      )),
    );
  }
}
