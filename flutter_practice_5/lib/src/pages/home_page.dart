import 'package:flutter/material.dart';
import 'package:flutter_practice_5/src/pages/alert_page.dart';
import 'package:flutter_practice_5/src/providers/menu_provider.dart';
import 'package:flutter_practice_5/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData().then((opciones) {
    //   print(opciones);
    // });
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
          });
      opciones.add(widgetTemp);
    });
    return opciones;
  }
}
