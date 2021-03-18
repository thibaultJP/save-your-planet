import 'package:flutter/material.dart';

class ScaffoldDefis extends StatelessWidget {

  String title;
  ScaffoldDefis(String title){
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