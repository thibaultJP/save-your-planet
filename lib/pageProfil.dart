import 'package:flutter/material.dart';
import 'package:save/widgets/background.dart';
import 'package:save/widgets/headerWidget.dart';
import 'package:save/widgets/menuWidget.dart';

class ScaffoldProfil extends StatelessWidget {

  String title;
  ScaffoldProfil(String title){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      body: Container(


          decoration: decorationBackground(),
          child: new HeaderWidget()
      ),
      bottomNavigationBar: new MenuWidget(),
    );
  }
}