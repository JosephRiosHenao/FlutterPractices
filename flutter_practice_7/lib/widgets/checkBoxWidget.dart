import 'package:flutter/material.dart';

class checkBoxCustomWidget extends StatefulWidget {
  bool value;

  checkBoxCustomWidget(this.value);
  @override
  _checkBoxCustomWidgetState createState() => _checkBoxCustomWidgetState();
}

class _checkBoxCustomWidgetState extends State<checkBoxCustomWidget> {
  set value(bool value) {}
  bool get value => null;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: value
              ? Icon(
                  Icons.check,
                  size: 25.0,
                  color: Colors.white,
                )
              : Icon(
                  Icons.check_box_outline_blank,
                  size: 25.0,
                  color: Colors.blue,
                ),
        ),
      ),
    ));
  }
}
