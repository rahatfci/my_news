import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:my_news/constants.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  TextEditingController startingDate = TextEditingController();
  TextEditingController endingDate = TextEditingController();
  DateTime now = DateTime.now();
  @override
  void initState() {
    startingDate.text = "";
    endingDate.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: const EdgeInsets.only(top: 40, left: 15),
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
                    style: const TextStyle(
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
                    style: const TextStyle(
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
            drawerItem(FontAwesomeIcons.globe, "Select Country", [
              'Arab Emirate',
              'Argentina',
              'Austria',
              'Australia',
              'Belgium',
              'Bulgaria',
              'Brazil',
              'Canada',
              'Switzerland',
              'China',
              'Colombia',
              'Cuba',
              'Czechia',
              'Germany',
              'Egypt',
              'France',
              'Greece',
              'Hong Kong',
              'Hungary',
              'Indonesia',
              'Ireland',
              'India',
              'Italy',
              'Japan',
              'Korea',
              'Morocco',
              'Mexico',
              'Malaysia',
              'Nigeria',
              'Netherlands',
              'Norway',
              'New Zealand',
              'Philippines',
              'Poland',
              'Portugal',
              'Romania',
              'Serbia',
              'Russia',
              'Saudi Arabia',
              'Sweden',
              'Singapore',
              'Thailand',
              'Turkey',
              'Taiwan',
              'Ukraine',
              'Venezuela',
              'South Africa'
            ]),
            drawerItem(FontAwesomeIcons.language, "Select Language", [
              'Arabic',
              'German',
              'English',
              'French',
              'Hebrew',
              'Italian',
              'Dutch',
              'Norwegian',
              'Portuguese',
              'Russian',
              'Swedish',
              'Chinese'
            ]),
            dateSelect(),
          ],
        ),
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

  Widget drawerItem(IconData icon, String title, List<String> subMenu) {
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
        children: buildSubMenuItem(subMenu),
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = value;
          });
        },
      ),
    );
  }

  Widget dateSelect() {
    bool isExpanded = false;
    return StatefulBuilder(
      builder: (context, setState) => ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        leading: FaIcon(
          FontAwesomeIcons.solidCalendarDays,
          color: isExpanded ? kPrimaryColor : Colors.black54,
        ),
        title: Text(
          "Select Date",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isExpanded ? kPrimaryColor : Colors.black87),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              height: 40,
              width: 150,
              child: TextField(
                textAlign: TextAlign.center,
                scrollPadding: EdgeInsets.zero,
                controller: startingDate,
                decoration: const InputDecoration(
                    labelText: "Staring",
                    labelStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder()),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: now,
                      firstDate: DateTime(now.year, now.month - 1, now.day),
                      lastDate: now);

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    setState(() {
                      startingDate.text = formattedDate;
                    });
                  }
                },
              ),
            ),
          ),
          const Text(
            "To",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: SizedBox(
              height: 40,
              width: 150,
              child: TextField(
                controller: endingDate,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    labelText: "Ending",
                    labelStyle: TextStyle(
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder()),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(now.year, now.month - 1, now.day),
                      lastDate: DateTime.now());

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    setState(() {
                      endingDate.text = formattedDate;
                    });
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: SizedBox(
              height: 35,
              width: 110,
              child: TextButton.icon(
                style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
                icon: const FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  NavigationDrawer.scaffoldKey.currentState!.openEndDrawer();
                },
                label: const Text(
                  "Search",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = value;
          });
        },
      ),
    );
  }

  List<Widget> buildSubMenuItem(List<String> items) {
    return items
        .map((e) => InkWell(
              splashColor: kPrimaryColor.withOpacity(.7),
              onTap: () {},
              child: ListTile(
                title: Text(
                  e,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                contentPadding: const EdgeInsets.only(left: 60),
              ),
            ))
        .toList();
  }
}
