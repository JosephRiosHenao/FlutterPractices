import 'package:flutter/material.dart';
import 'package:flutter_practice_7/pages/loginPage.dart';

class InputWidget extends StatelessWidget {
  final typeIs;
  final textIs;

  InputWidget({this.textIs, this.typeIs});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Stack(
        children: [
          _customPaintBuilder(context),
          Center(child: _textFieldBuilder(context)),
        ],
      ),
    );
    /*
                        SizedBox(
                          width: 230,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: '$textIs',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        );
                        */
  }

  Widget _customPaintBuilder(BuildContext context) {
    return Container(
      height: 40,
      width: 260,
      child: CustomPaint(
        painter: TextFieldPainter(),
      ),
    );
  }

  Widget _textFieldBuilder(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 30,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: '$textIs',
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          border: InputBorder.none,
        ),
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
      ..style = PaintingStyle.fill;

    final path = new Path()
      ..moveTo(25, 0)
      ..lineTo(235, 0)
      ..lineTo(260, 20)
      ..lineTo(235, 40)
      ..lineTo(25, 40)
      ..lineTo(0, 20)
      ..lineTo(25, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TextFieldPainter oldDelegate) => true;
}
