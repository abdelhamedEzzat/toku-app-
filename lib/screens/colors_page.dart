import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/buiditems.dart';
import 'package:toku/models/items_Model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> colors = const [
      Item(
        sound: 'black.wav',
        jpName: 'Burakku',
        enName: 'black',
        image: 'assets/images/colors/color_black.png',
      ),
      Item(
        sound: 'brown.wav',
        jpName: 'Chairo',
        enName: 'brown',
        image: 'assets/images/colors/color_brown.png',
      ),
      Item(
        sound: 'dusty yellow.wav',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
      ),
      Item(
        sound: 'gray.wav',
        jpName: 'Gurē',
        enName: 'gray',
        image: 'assets/images/colors/color_gray.png',
      ),
      Item(
        sound: 'green.wav',
        jpName: 'Midori',
        enName: 'green',
        image: 'assets/images/colors/color_green.png',
      ),
      Item(
        sound: 'red.wav',
        jpName: 'Aka',
        enName: 'red',
        image: 'assets/images/colors/color_red.png',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
          backgroundColor: const Color(0xff463025),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (BuildContext context, int index) => BuildItems(
                  number: colors[index],
                  coloritem: const Color(0xff79359F),
                  itemType: 'colors',
                )),
      ),
    );
  }
}
