import 'package:flutter/material.dart';

const TextStyle kTitleTextstyle = TextStyle(
    inherit: true,
    fontSize: 20.0,
    color: Colors.white,
    shadows: [
      Shadow( // bottomLeft
          offset: Offset(-1, -1),
          color: Colors.black26
      ),
      Shadow( // bottomRight
          offset: Offset(1, -1),
          color: Colors.black26
      ),
      Shadow( // topRight
          offset: Offset(1, 1),
          color: Colors.black26
      ),
      Shadow( // topLeft
          offset: Offset(-1, 1),
          color: Colors.black26
      ),
    ]
);
const TextStyle kcontentTextstyle = TextStyle(fontSize: 14,color: Colors.black,);