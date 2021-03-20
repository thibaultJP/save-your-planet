import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save/widgets/background.dart';
import 'package:save/widgets/headerWidget.dart';
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

      body: Container(
        margin: EdgeInsets.only(top: 0,bottom: 0),
        padding: EdgeInsets.only(top: 0,bottom: 0),
        decoration: decorationBackground(),



        child:new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children :[
            HeaderWidget(),
            Container(
                width: width/2,
                height: height/12,
                margin: EdgeInsets.only(top:height/10),
              decoration: decorationTitreDefis(),
              child: new Center(
                child:new Text(
                  'Défis',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    fontSize: 35,
                    color: Color.fromRGBO(184, 225, 234, 1),
                    ),
                  ),
                ),
              ),
              ),

            Container(
            margin: EdgeInsets.only(top: 0,bottom: 0),
            padding: EdgeInsets.all(0),
            child: new Container(
              padding:EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              decoration: decorationDefis(),
              child: new Center(
                child: new Column(

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
                      margin: EdgeInsets.only(top: height/30, right: width/8, left: width/8,bottom: 30),
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
          ]
        )
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

  BoxDecoration decorationTitreDefis() {
    return BoxDecoration(
      boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],
      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
      gradient: new RadialGradient(
        radius: 2,

        colors: <Color>[
          Color.fromRGBO(62, 106, 64, 0.72),
          Color.fromRGBO(91, 129, 81, 1),

        ],

      ),
    );
  }
}