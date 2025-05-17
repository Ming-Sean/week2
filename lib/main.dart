import 'package:flutter/material.dart';
import 'constants.dart';
import 'color_pool.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter week 2')),
        body: Row(
          children: [
            Expanded(
                child: ListView(
                  children: [

                    NoteCard(description:  'sewrfsw'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sedf', description: 'aefe'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                    NoteCard(title: 'sef', description: 'se1555555555555555555555555555555555555555555f'),
                  ],
                )
            ),
            Expanded(
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.orange)),
                    Expanded(child: Container(color: Colors.green)),
                    Expanded(child: Container(color: Color(0xFFBBFBFF))),
                  ],
                )
            ),
          ],
        )
      )
    );
  }
}



class NoteCard extends StatelessWidget {

  const NoteCard({
    super.key,
     this.title,
    required this.description,
  });
  final String? title; //加問號(string?)可以吃空值，建議不用
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),//讓內容往內縮
      width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),

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

