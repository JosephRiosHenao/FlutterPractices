import 'package:flutter/material.dart';
import 'package:flutter_practice_7/pages/loginPage.dart';

class InputWidget extends StatelessWidget {
  final typeIs;
  final textIs;

  InputWidget({this.textIs, this.typeIs});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: '$textIs',
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
