import 'package:flutter/material.dart';

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
        cursorColor: Colors.black,
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
      ..color = Colors.white
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
