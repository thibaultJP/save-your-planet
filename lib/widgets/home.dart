import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              height: 100,
              width: width/5,
              color: Colors.green,
              child: new Center(
                child: new Text('Profil',
                  style: new TextStyle(
                    fontSize: 20
                  ),

                ),

              ),
            ),
            new Container(
                height: 100,
                width: width/5,
                color: Colors.green,
                child: new Center(
                  child: new Text('Quiz',
                    style: new TextStyle(
                        fontSize: 20
                    ),

                  ),

                ),
            ),
            new Container(
                height: 100,
                width: width/5,
                color: Colors.green,
                child: new Center(
                  child: new Text('Home',
                    style: new TextStyle(
                        fontSize: 20
                    ),

                  ),

                ),
            ),
            new Container(
                height: 100,
                width: width/5,
                color: Colors.green,
                child: new Center(
                  child: new Text('Défis',
                    style: new TextStyle(
                        fontSize: 20
                    ),

                  ),

                ),
            ),
            new Container(
                height: 100,
                width: width/5,
                color: Colors.green,
                child: new Center(
                  child: new Text('Carte',
                    style: new TextStyle(
                        fontSize: 20
                    ),

                  ),

                ),
            ),
          ],
        ),
      ),
    );
  }
}