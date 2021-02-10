import 'package:flutter/material.dart';
import 'package:flutter_practice_7/pages/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
