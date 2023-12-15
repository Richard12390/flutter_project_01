import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';
import 'secondpage.dart';
import 'colorscheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: mainTheme, title: 'Flutter Demo Home Page', home: HomePage());
  }
}
