import 'package:flutter/material.dart';
import 'package:toku/components/buiditems.dart';

import 'package:toku/models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Phrase> phrases = const [
      Phrase(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe',
      ),
      Phrase(
        sound: 'i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu daisukidesu',
        enName: 'i love  programming',
      ),
      Phrase(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu ',
        enName: 'programming is easy',
      ),
      Phrase(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going',
      ),
      Phrase(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name ?',
      ),
      Phrase(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime',
      ),
      Phrase(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling?',
      ),
      Phrase(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming?',
      ),
      Phrase(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai watashi wa kite imasu',
        enName: 'yes i am coming',
      ),
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Phrases'),
            backgroundColor: const Color(0xff46322B),
          ),
          body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhraseItem(
                phrase: phrases[index],
                color: const Color(0xff50ADC7),
                itemType: 'phrases',
              );
            },
          ),
        ));
  }
}
