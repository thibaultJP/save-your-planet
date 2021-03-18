import 'package:flutter/material.dart';
import 'package:save/pageProfil.dart';
import 'package:save/pageQuiz.dart';
import 'home.dart';
import 'package:save/pageDefis.dart';
import 'package:save/pageCarte.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/pageQuiz': (context) => ScaffoldQuiz('Quiz'),
        '/pageProfil': (context) => ScaffoldProfil('Profil'),
        '/pageDefis': (context) => ScaffoldDefis('Défis'),
        '/pageCarte': (context) => ScaffoldCarte('Carte'),
      },
      initialRoute: '/');
  }
}