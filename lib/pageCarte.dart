import 'package:flutter/material.dart';
import 'package:save/widgets/background.dart';
import 'package:save/widgets/menuWidget.dart';
class ScaffoldCarte extends StatelessWidget {

  String title;

  ScaffoldCarte(String title){
    this.title = title;

  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: Center(

        child: new Container(
          decoration: decorationBackground(),
        ),
      ),
      bottomNavigationBar: new MenuWidget(),

    );
  }
}