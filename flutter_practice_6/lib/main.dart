import 'package:flutter/material.dart';
import 'package:flutter_practice_6/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
