import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save/pageCarte.dart';
import 'package:save/pageDefis.dart';
import 'package:save/pageProfil.dart';
import 'package:save/pageQuiz.dart';
import 'package:save/widgets/home.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color(0xFF3A6133);
    Color menuColor2 = const Color.fromRGBO(91,149,81,0.65);
    Color text_menu_color = const Color.fromRGBO(184,225,234,1);
    var mediaQueryData = MediaQuery.of(context);

    final width = mediaQueryData.size.width;
    final height = mediaQueryData.size.height;
    BoxDecoration decorationMenu() {
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

    void goToHome() {
      Navigator.pushNamed(context, '/');
    }
    void goToProfil() {
      Navigator.pushNamed(context, '/pageProfil');
    }

    void goToQuiz() {
      Navigator.pushNamed(context, '/pageQuiz');
    }
    void goToDefis() {
      Navigator.pushNamed(context, '/pageDefis');
    }
    void goToCarte() {
      Navigator.pushNamed(context, '/pageCarte');
    }
    return new BottomAppBar(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Container(
            height: height / 9,
            width: width / 5,

            decoration: decorationMenu(),
            child: new Center(
              child: FlatButton(
                minWidth: width / 5,
                height: height / 9,
                padding: EdgeInsets.all(0),
                color: Colors.transparent,
                onPressed: goToProfil,
                child: Stack(
                  children: <Widget>[
                    Text(
                      'Profil',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black12,
                        ),
                      ),
                    ),
                    Text(
                      'Profil',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: text_menu_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),

          new Container(
            height: height / 9,
            width: width / 5,

            decoration: decorationMenu(),
            child: new Center(
              child: FlatButton(
                minWidth: width / 5,
                height: height / 9,
                padding: EdgeInsets.all(0),
                color: Colors.transparent,
                onPressed: goToQuiz,
                child: Stack(
                  children: <Widget>[
                    Text(
                      'Quiz',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black12,
                        ),
                      ),
                    ),
                    Text(
                      'Quiz',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: text_menu_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          new Container(
              height: height / 9,
              width: width / 5,

              decoration: decorationMenu(),
              child: new Center(
                child: FlatButton(
                  minWidth: width / 5,
                  height: height / 9,
                  padding: EdgeInsets.all(0),
                  color: Colors.transparent,
                  onPressed: goToHome,
                  child: new Image.asset(
                      'img/planete_menu.png',
                      fit: BoxFit.contain),
                )

              )

          ),

          new Container(
            height: height / 9,
            width: width / 5,

            decoration: decorationMenu(),
            child: new Center(
              child: FlatButton(
                minWidth: width / 5,
                height: height / 9,
                padding: EdgeInsets.all(0),
                color: Colors.transparent,
                onPressed: goToDefis,
                child: Stack(
                  children: <Widget>[
                    Text(
                      'Défis',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black12,
                        ),
                      ),
                    ),
                    Text(
                      'Défis',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: text_menu_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          new Container(
            height: height / 9,
            width: width / 5,

            decoration: decorationMenu(),
            child: new Center(
              child: FlatButton(
                minWidth: width / 5,
                height: height / 9,
                padding: EdgeInsets.all(0),
                color: Colors.transparent,
                onPressed: goToCarte,
                child: Stack(
                  children: <Widget>[
                    Text(
                      'Carte',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black12,
                        ),
                      ),
                    ),
                    Text(
                      'Carte',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: text_menu_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        ],
      ),
    );

  }
}


