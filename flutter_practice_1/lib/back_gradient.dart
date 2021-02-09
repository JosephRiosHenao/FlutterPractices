import 'package:flutter/material.dart';

class back_gradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new gradient(),
      ],
    );
  }
}

class gradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [Color(0xFFffbb00), Color(0xFFf38c02)],
              begin: const FractionalOffset(1.0, 0.1),
              end: const FractionalOffset(1.0, 0.9))),
    );
  }
}
