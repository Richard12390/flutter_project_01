import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stock Life"),
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
