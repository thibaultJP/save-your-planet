import 'package:flutter/material.dart';
import 'package:save/widgets/menuWidget.dart';

class ScaffoldProfil extends StatelessWidget {

  String title;
  ScaffoldProfil(String title){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: new MenuWidget(),
    );
  }
}