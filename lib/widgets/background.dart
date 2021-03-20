import 'package:flutter/material.dart';

BoxDecoration decorationBackground(){
  return BoxDecoration(

    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: <Color>[
        Color.fromRGBO(36, 36, 36, 1),
        Color.fromRGBO(36, 36, 36, 0.66),
      ],

    ),
  );

}