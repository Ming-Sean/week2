import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'color_pool.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<NoteCard> notes = [];


  @override
  void initState() {
    // TODO: implement initState
    notes.add(NoteCard(title: 'sef', description: '第$s'));
    super.initState();
  }
  // @override
  // void dispose() {git
  //
  // }

  void removeNodes() {

  }

  int s = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              s += 1;
              notes.add(NoteCard(title: 'sef', description: '第$s'));
            });
          },
          child: Icon(Icons.smoke_free),
        ),
        appBar: AppBar(title: const Text('flutter week 2')),
        body: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return notes[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {


  final String? title; //加問號(string?)可以吃空值，建議不用
  final String description;
  final void Function() remove;

  const NoteCard({
    super.key,
    this.title,
    required this.description,
    required this.remove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      //讓內容往內縮
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title ?? "default", style: kTitleTextstyle),
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
          Text(description, style: kcontentTextstyle),
        ],
      ),
    );
  }
}



