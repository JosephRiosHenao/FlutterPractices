import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final routeName = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Words"),
        centerTitle: true,
      ),
    );
  }
}
