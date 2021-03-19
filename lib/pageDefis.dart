import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save/widgets/background.dart';
import 'package:save/widgets/menuWidget.dart';

class ScaffoldDefis extends StatelessWidget {

  String title;
  ScaffoldDefis(String title){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    final width = mediaQueryData.size.width;
    final height = mediaQueryData.size.height;
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: Container(
        decoration: decorationBackground(),
        child: new Card(
          margin: EdgeInsets.only(top: height/6),

          child: new Container(
            decoration: decorationDefis(),
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Container(
                    margin: EdgeInsets.only(top: height/30, right: width/8, left: width/8),
                    height: height/8,

                    decoration: new BoxDecoration(
                      color: Color.fromRGBO(184, 225, 234, 1),
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      border: new Border.all(width: 1),
                      boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],
                    ),
                    child: new Center(
                      child: new Column(

                        children: [
                          new Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: new Text(
                              'Défis quotidiens [3/10]',

                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(62, 106, 64, 1)


                                )
                              )
                            ),
                          ),
                              new Container(
                                padding: EdgeInsets.only(top: 15),
                                margin: EdgeInsets.only(left:20.0,right: 20.0),
                                height: height/25,
                                child: new LinearProgressIndicator(
                                  value:3/10,
                                  backgroundColor: Color.fromRGBO(91, 149, 81, 0.66),
                                  valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(62, 106, 64, 1)),
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),

                  new Container(
                    margin: EdgeInsets.only(top: height/30, right: width/8, left: width/8),
                    height: height/8,

                    decoration: new BoxDecoration(
                      color: Color.fromRGBO(184, 225, 234, 1),
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      border: new Border.all(width: 1),
                      boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],
                    ),
                    child: new Center(
                      child: new Column(

                        children: [
                          new Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: new Text(
                                'Défis Permanents [22/57]',

                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromRGBO(62, 106, 64, 1)


                                    )
                                )
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(top: 15),
                            margin: EdgeInsets.only(left:20.0,right: 20.0),
                            height: height/25,
                            child: new LinearProgressIndicator(
                              value:22/57,
                              backgroundColor: Color.fromRGBO(91, 149, 81, 0.66),
                              valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(62, 106, 64, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  new Container(
                    margin: EdgeInsets.only(top: height/30, right: width/8, left: width/8),
                    height: height/8,

                    decoration: new BoxDecoration(
                      color: Color.fromRGBO(184, 225, 234, 1),
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      border: new Border.all(width: 1),
                      boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],
                    ),
                    child: new Center(
                      child: new Column(

                        children: [
                          new Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: new Text(
                                'Défis Spéciaux [5/6]',

                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromRGBO(62, 106, 64, 1)


                                    )
                                )
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(top: 15),
                            margin: EdgeInsets.only(left:20.0,right: 20.0),
                            height: height/25,
                            child: new LinearProgressIndicator(
                              value:5/6,
                              backgroundColor: Color.fromRGBO(91, 149, 81, 0.66),
                              valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(62, 106, 64, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

          ),
        ),

      ),
      bottomNavigationBar: new MenuWidget(),
    );
  }
  BoxDecoration decorationDefis() {
    return BoxDecoration(


      gradient: new RadialGradient(
        radius: 0.6,

        colors: <Color>[
          Color.fromRGBO(62, 106, 64, 0.72),
          Color.fromRGBO(91, 129, 81, 1),

        ],

      ),
    );
  }
}