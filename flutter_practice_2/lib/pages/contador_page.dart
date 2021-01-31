import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return ContadorPageState();
  }
}

class ContadorPageState extends State<ContadorPage> {
  final _estiloText = new TextStyle(fontSize: 25);

  int _cont = 0;

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
            Text("$_cont", style: _estiloText),
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton.extended(
          onPressed: () => _add(),
          backgroundColor: Color.fromRGBO(255, 87, 51, 1),
          icon: Icon(Icons.add),
          label: Text('Add'),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton.extended(
          onPressed: () => _reset(),
          backgroundColor: Color.fromRGBO(255, 87, 51, 1),
          icon: Icon(Icons.settings_backup_restore_outlined),
          label: Text('Reset'),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton.extended(
          onPressed: () => _remove(),
          backgroundColor: Color.fromRGBO(255, 87, 51, 1),
          icon: Icon(Icons.remove),
          label: Text('Remove'),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  void _add() {
    setState(() => _cont++);
  }

  void _remove() {
    setState(() => _cont--);
  }

  void _reset() {
    setState(() => _cont = 0);
  }
}
