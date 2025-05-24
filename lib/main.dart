import 'package:flutter/material.dart';
import 'constants.dart';
import 'color_pool.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late final LinkedScrollControllerGroup _controllers;
  late final ScrollController _leftScrollController;
  late final ScrollController _rightScrollController;

  @override
  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _leftScrollController = _controllers.addAndGet();
    _rightScrollController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _leftScrollController.dispose();
    _leftScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('flutter week 2')),
            body: Row(
              children: [
                Expanded(
                    child: ListView(
                      controller: _leftScrollController,
                      children: [
                        NoteCard(title: 'Bohemian Rhapsody', description: "I sometimes wish I'd never been born at all"),
                        NoteCard(title: 'Study', description: ''),
                        NoteCard(title: 'Elevator Vibes', description: "Everyone suddenly becomes super interested in the floor numbers."),
                        NoteCard(title: 'No Sound', description: "Not awkward. Just… quiet."),
                        NoteCard(title: 'Grass', description: "Soft when you walk, itchy when you sit."),
                        NoteCard(title: 'All We Here Is', description: 'Radio gxxxxxxxxxxxx'),
                        NoteCard(title: 'Fridge Smell', description: "Something in there is living its best life."),
                        NoteCard(title: 'Sticky Notes', description: "Stick them. Forget them."),
                        NoteCard(title: 'That Book', description: "I’ll finish it someday. I swear."),
                        NoteCard(title: 'Couch Trap', description: "You sit. You melt. You never get back up."),

                      ],
                    )
                ),
                Expanded(
                    child: ListView(
                      controller: _rightScrollController,
                      children: [

                        NoteCard(title: 'Blank Day', description: "Not much happened, but the day still flew by."),
                        NoteCard(title: 'Streetlights', description: "Some just flicker like they're thinking too hard."),
                        NoteCard(title: 'The Drink Dilemma', description: "Always stuck choosing between green tea or cocoa."),
                        NoteCard(title: 'Footsteps Upstairs', description: "Someone’s home… or is it the cat again?"),
                        NoteCard(title: 'Should’ve Brought a Jacket', description: "Too late now."),
                        NoteCard(title: 'One Egg', description: "Scrambled? Boiled? Omelette? Existential."),
                        NoteCard(title: 'By the Window', description: "The breeze had a little bite today."),
                        NoteCard(title: 'Package Arrived', description: "I didn’t order anything…"),
                        NoteCard(title: 'Handwriting', description: "Some people just write like fonts."),
                        NoteCard(title: 'Zero Percent', description: "Maybe I just haven’t started yet."),
                      ],
                    )
                ),
              ],
            ),
        ),
    );
  }
}






class NoteCard extends StatelessWidget {

  NoteCard({
    super.key,
    this.title,
    required this.description,
  });
  final String? title; //加問號(string?)可以吃空值，建議不用
  final String description;
  int? lastColorIndex;

  Color getRandomColor() {
    int newIndex;
    do {
      newIndex = Random().nextInt(colorPool.length);
    } while (newIndex == lastColorIndex && colorPool.length > 1);
    lastColorIndex = newIndex;
    return colorPool[newIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(15),//讓內容往內縮
      width: double.infinity,
        decoration: BoxDecoration(
          color: getRandomColor(),
          borderRadius: BorderRadius.circular(25),

        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title?? "default", style: kTitleTextstyle),
          Text(description, style: kcontentTextstyle),
        ],
      )
    );
  }
}

