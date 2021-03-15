import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final typeIs;
  final textIs;
  InputWidget({this.textIs, this.typeIs});

  void Imprimir() => _InputWidgetState().imprimir();
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController _controllerText = new TextEditingController();
  Information information = new Information();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controllerText.dispose();
    super.dispose();
  }

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
        controller: _controllerText,
        onChanged: (value) {
          setState(() {
            information.setTextValue(value);
            print(information.getTextValue());
          });
        },
        cursorColor: Colors.black,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: this.widget.textIs,
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          border: InputBorder.none,
        ),
      ),
    );
  }

  imprimir() {
    print(information.getTextValue());
    print(information.textValue);
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

class Information {
  String textValue = "";
  void setTextValue(String value) {
    this.textValue = value;
  }

  String getTextValue() {
    return this.textValue;
  }
}
