import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Center(
        child: Container(
            child: Stack(
          children: [
            _gradient(context),
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
}
