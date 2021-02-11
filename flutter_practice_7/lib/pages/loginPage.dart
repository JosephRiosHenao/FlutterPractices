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
              _customPaintBuilder(context),
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

  Widget _customPaintBuilder(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      color: Colors.black12,
      child: CustomPaint(
        painter: TextFieldPainter(),
      ),
    );
  }
}

class TextFieldPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Colors.blueAccent
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final path = new Path()
      ..moveTo(30, 0)
      ..lineTo(230, 0)
      ..lineTo(260, 20)
      ..lineTo(230, 40)
      ..lineTo(30, 40)
      ..lineTo(0, 20)
      ..lineTo(30, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TextFieldPainter oldDelegate) => true;
}
