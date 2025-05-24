import 'package:flutter/material.dart';
import 'note_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<NoteCard> notes = [];

  void removeNodes(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    notes.add(NoteCard(title: 'sef', description: '第$s', remove: removeNodes, index: notes.length));
    super.initState();
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
              notes.add(NoteCard(title: 'sef', description: '第$s', remove: removeNodes, index: notes.length));
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
                  notes[index].index = index;
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








