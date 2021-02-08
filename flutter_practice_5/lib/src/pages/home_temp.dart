import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Component'),
        centerTitle: true,
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Center(child: Text(opt)),
      );
      lista.add(tempWidget);
      lista.add(Divider(
        color: Colors.blue,
        height: 10,
        thickness: 2.5,
        endIndent: 100,
        indent: 100,
      ));
    }
    return lista;
  }
}
