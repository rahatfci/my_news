import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:my_news/constants.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.only(top: 40, left: 15),
            duration: Duration.zero,
            decoration: const BoxDecoration(color: kPrimaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      'assets/icons/logo.svg',
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Good ${selectGreeting()}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  DateFormat('EEEE, MMMM dd').format(DateTime.now()),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          drawer_item(FontAwesomeIcons.globe, "Select Country", []),
          drawer_item(FontAwesomeIcons.language, "Select Language", []),
          drawer_item(FontAwesomeIcons.solidCalendarDays, "Select Date", []),
        ],
      ),
    );
  }

  String selectGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 17) {
      return 'Afternoon';
    }
    return 'Evening';
  }

  Widget drawer_item(IconData icon, String title, List<Widget> subMenu) {
    bool isExpanded = false;
    return StatefulBuilder(
      builder: (context, setState) => ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        leading: FaIcon(
          icon,
          color: isExpanded ? kPrimaryColor : Colors.black54,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isExpanded ? kPrimaryColor : Colors.black87),
        ),
        children: subMenu,
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = value;
          });
        },
      ),
    );
  }
}
