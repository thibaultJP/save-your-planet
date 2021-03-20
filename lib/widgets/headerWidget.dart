import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save/widgets/menuWidget.dart';

class HeaderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    final width = mediaQueryData.size.width;
    final height = mediaQueryData.size.height;
    return new Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: width,
        height: height/7,
        margin: EdgeInsets.only(top: 30.0,left: 10,right: 10.0),

        child:FittedBox(
          fit: BoxFit.fill,
          child: new Row(


            children: [
              new Container(
                width:width/4,
                padding: EdgeInsets.all(5.0),
                decoration: decorationAvatar(),

                child: new Image.asset('img/userLogo.png'),
              ),
              new Container(
                width:width/9,
                height: height/15,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.only(top:10,bottom: 10,left:10,right:2),
                decoration: decorationNiveau(),
                child: new Center(
                  child:new Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white38,
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(right: 10),
                height: height/40,
                width: width/3,
                decoration: new BoxDecoration(boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],),
                child: new LinearProgressIndicator(
                  value:2/3,
                  backgroundColor: Color.fromRGBO(91, 149, 81, 0.32),
                  valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(91, 149, 81, 0.66)),

                ),
              ),
              new Container(
                height: height/10,
                width:width/6,
                padding: EdgeInsets.all(5.0),
                decoration: decorationAvatar(),
                child: new Image.asset('img/parametre.png'),



              ),

            ],
          )
        )
      )
    );
  }
  Color menuColor = const Color(0xFF3A6133);
  Color menuColor2 = const Color.fromRGBO(91,149,81,0.65);
  Color text_menu_color = const Color.fromRGBO(184,225,234,1);
  BoxDecoration decorationAvatar() {
    return BoxDecoration(

      boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],
      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
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
  BoxDecoration decorationNiveau() {
    return BoxDecoration(

      boxShadow: [BoxShadow(color:Colors.black54, blurRadius: 5.0,spreadRadius: 0.5,offset: Offset(2.0,2.0))],
      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
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

}