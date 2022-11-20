import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_news/constants.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 10),
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Search What You Need!",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: TextFormField(
                    key: formKey,
                    controller: searchController,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 15, right: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Search",
                      labelStyle: TextStyle(
                        color: kTextColor.withOpacity(.8),
                        fontSize: 18,
                      ),
                    ),
                    style: const TextStyle(fontSize: 18),
                    cursorHeight: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Ink(
                height: 48,
                width: 55,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.sliders,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
