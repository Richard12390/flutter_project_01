import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'secondpage.dart';
import 'colorscheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: mainTheme, title: 'Flutter Demo Home Page', home: firstPage());
  }
}

class firstPage extends StatefulWidget {
  firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  List<String> list__view = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAccount"),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: list__view.length,
        itemBuilder: context(),
      )),
      floatingActionButton: TextButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
