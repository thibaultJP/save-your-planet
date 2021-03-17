import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              height: height/9,
              width: width/5,

              decoration: decorationMenu(),
              child: new Center(
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

            new Container(
              height: height/9,
              width: width/5,

              decoration: decorationMenu(),
              child: new Center(
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
            new Container(
                height: height/9,
                width: width/5,

                decoration: decorationMenu(),
                child: new Center(

                  child: new Image.asset(
                    'img/planete_menu.png',
                    fit: BoxFit.contain),
                  )

                ),

            new Container(
                height: height/9,
                width: width/5,

                decoration: decorationMenu(),
                child: new Center(
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
            new Container(
                height: height/9,
                width: width/5,

                decoration: decorationMenu(),
                child: new Center(
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
          ],
        ),
      ),
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
}