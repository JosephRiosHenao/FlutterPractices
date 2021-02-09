import 'package:flutter/material.dart';
import 'package:flutter_practice_6/widgets/container_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyHomePage(context),
    );
  }

  Widget _bodyHomePage(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.arrow_back),
          ),
          Center(
            child: CircleAvatar(
              maxRadius: 90.0,
              backgroundImage: NetworkImage('https://cutt.ly/6kRTHAA'),
            ),
          ),
          Text('Catherine Massey'),
          Text('UI/UX'),
          _buttoms(context),
        ],
      ),
    );
  }

  Widget _buttoms(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContainerWidget(
          color: Colors.blue,
          icon: Icon(Icons.ac_unit),
        ),
        ContainerWidget(
          color: Colors.yellow,
          icon: Icon(Icons.ac_unit),
        ),
        ContainerWidget(
          color: Colors.red,
          icon: Icon(Icons.ac_unit),
        ),
        ContainerWidget(
          color: Colors.green,
          icon: Icon(Icons.ac_unit),
        ),
      ],
    );
  }
}
