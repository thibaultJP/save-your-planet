import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save/pageProfil.dart';
import 'package:save/widgets/menuWidget.dart';
import 'my-app.dart';
import 'package:save/widgets/background.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    final width = mediaQueryData.size.width;
    final height = mediaQueryData.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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



