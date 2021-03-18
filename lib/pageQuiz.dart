import 'package:flutter/material.dart';

class ScaffoldQuiz extends StatelessWidget {

  String title;
  ScaffoldQuiz(String title){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
    );
  }
}