import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloText = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 87, 51, 1),
        title: Text("MyPage"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de clicks", style: TextStyle(fontSize: 30)),
            Text("0", style: estiloText),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(255, 87, 51, 1),
        icon: Icon(Icons.add),
        label: Text('Añadir'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
