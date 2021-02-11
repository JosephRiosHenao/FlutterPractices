import 'package:flutter/material.dart';
import 'package:flutter_practice_7/widgets/inputWidget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _content(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gradient(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [const Color(0xffee0000), const Color(0xffeeee00)],
      )),
    );
  }

  Widget _content(BuildContext context) {
    final _separationSize = 20.0;
    return Column(
      children: [
        InputWidget(
          textIs: 'NODO',
          typeIs: 'a',
        ),
        SizedBox(
          height: _separationSize,
        ),
        InputWidget(
          textIs: 'DIRECCIÓN',
          typeIs: 'a',
        ),
        SizedBox(
          height: _separationSize,
        ),
        InputWidget(
          textIs: 'ALTURA',
          typeIs: 'a',
        ),
        SizedBox(
          height: _separationSize,
        ),
        InputWidget(
          textIs: 'CARGA',
          typeIs: 'a',
        ),
      ],
    );
  }
}
