import 'package:flutter/material.dart';
import 'package:flutter_practice_7/pages/loginPage.dart';

class InputWidget extends StatelessWidget {
  final typeIs;
  final textIs;

  InputWidget({this.textIs, this.typeIs});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: '$textIs',
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
