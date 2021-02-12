import 'package:flutter/material.dart';
import 'package:flutter_practice_7/widgets/inputWidget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _gradient(context),
          _layoutDesign(context),
        ],
      ),
    );
  }

  Container _layoutDesign(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _titlePoste(context),
          _content(context),
        ],
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
        ),
      ),
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

  Widget _titlePoste(BuildContext context) {
    return Text(
      'POSTE',
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'SegoeUI',
          fontSize: 45,
          fontWeight: FontWeight.w300),
    );
  }
}
