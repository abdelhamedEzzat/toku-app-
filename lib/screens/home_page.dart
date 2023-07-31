import 'package:flutter/material.dart';

import 'package:toku/components/category_itemes.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/number_Page.dart';
import 'package:toku/screens/phras.dart';
import 'package:toku/screens/test%20.dart';

import 'family-members.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
          ),
          Category(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff50ADC7),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const one();
              }));
            },
            text: 'one',
            color: const Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
