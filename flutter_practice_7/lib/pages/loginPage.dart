import 'package:flutter/material.dart';
import 'package:flutter_practice_7/widgets/inputWidget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Center(
        child: Container(
            child: Stack(
          children: [
            _gradient(context),
            _content(context),
          ],
        )),
      ),
    ));
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
    return Column(
      children: [
        InputWidget(
          textIs: 'Nombre',
          typeIs: 'a',
        ),
        InputWidget(
          textIs: 'Usuario',
          typeIs: 'a',
        ),
        InputWidget(
          textIs: 'Contraseña',
          typeIs: 'a',
        ),
      ],
    );
  }
}
