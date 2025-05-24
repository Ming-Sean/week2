import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'color_pool.dart';


class NoteCard extends StatelessWidget {
  final String? title; //加問號(string?)可以吃空值，建議不用
  final String description;
  final void Function(int index) remove;
  int index;

  NoteCard({
    super.key,
    this.title,
    required this.description,
    required this.index,
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
                onPressed: () {
                  remove(index);
                },
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