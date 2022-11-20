import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Icon(Icons.flight, size: 350),
      Icon(Icons.directions_transit, size: 350),
      Icon(Icons.directions_car, size: 350),
      Icon(Icons.flight, size: 350),
      Icon(Icons.directions_transit, size: 350),
      Icon(Icons.directions_car, size: 350),
      Icon(Icons.directions_car, size: 350),
    ]);
  }
}
