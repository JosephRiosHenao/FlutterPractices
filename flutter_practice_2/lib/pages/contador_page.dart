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
          onPressed: () {
            _cont++;
            print("$_cont");
            setState(() {});
          },
          backgroundColor: Color.fromRGBO(255, 87, 51, 1),
          icon: Icon(Icons.add),
          label: Text('Add'),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton.extended(
          onPressed: () {
            _cont = 0;
            print("$_cont");
            setState(() {});
          },
          backgroundColor: Color.fromRGBO(255, 87, 51, 1),
          icon: Icon(Icons.settings_backup_restore_outlined),
          label: Text('Restart'),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton.extended(
          onPressed: () {
            _cont--;
            print("$_cont");
            setState(() {});
          },
          backgroundColor: Color.fromRGBO(255, 87, 51, 1),
          icon: Icon(Icons.remove),
          label: Text('Delete'),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
