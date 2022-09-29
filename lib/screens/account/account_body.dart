import 'package:flutter/material.dart';

import '../../components/nav_drawer.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      drawer: const NavigationDrawer(),
    );
  }
}
