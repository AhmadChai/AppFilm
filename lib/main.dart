import 'package:bottom_navigation/pages/detailmovie.dart';
import 'package:bottom_navigation/home.dart';
import 'package:bottom_navigation/pages/list_movie.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: MyHome(),
    );
  }
}

