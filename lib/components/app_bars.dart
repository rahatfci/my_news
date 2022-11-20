import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 30,
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              color: Colors.white,
            )),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "My News",
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.userLarge,
          color: Colors.white,
          size: 22,
        ),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => pages[3]));
        },
      ),
      const SizedBox(
        width: 10,
      )
    ],
    bottom: const TabBar(
      padding: EdgeInsets.only(bottom: 1),
      labelStyle: TextStyle(
          letterSpacing: .5,
          fontFamily: "Raleway",
          fontWeight: FontWeight.bold),
      isScrollable: true,
      tabs: [
        Tab(
          text: "Business",
        ),
        Tab(
          text: "Entertainment",
        ),
        Tab(
          text: "General",
        ),
        Tab(
          text: "Health",
        ),
        Tab(
          text: "Science",
        ),
        Tab(
          text: "Sports",
        ),
        Tab(
          text: "Technology",
        ),
      ],
    ),
  );
}

AppBar searchAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 30,
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              color: Colors.white,
            )),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "My News",
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.userLarge,
          color: Colors.white,
          size: 22,
        ),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => pages[3]));
        },
      ),
      const SizedBox(
        width: 10,
      )
    ],
  );
}
