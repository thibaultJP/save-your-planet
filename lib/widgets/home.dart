import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save/pageProfil.dart';
import 'package:save/widgets/menuWidget.dart';
import 'my-app.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color menuColor = const Color(0xFF3A6133);
  Color menuColor2 = const Color.fromRGBO(91,149,81,0.65);
  Color text_menu_color = const Color.fromRGBO(184,225,234,1);

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
  BoxDecoration decorationMenu(){

    return BoxDecoration(
      border: Border.all(),

      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: <Color>[
          menuColor,
          menuColor2,
        ],

      ),
    );


    }
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
  void goToProfil(){
    Navigator.pushNamed(context, '/pageProfil');
    }

  void goToQuiz(){
    Navigator.pushNamed(context, '/pageQuiz');
  }
  void goToDefis(){
    Navigator.pushNamed(context, '/pageDefis');
  }
  void goToCarte(){
    Navigator.pushNamed(context, '/pageCarte');
  }


}