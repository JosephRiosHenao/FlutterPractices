import 'package:flutter/material.dart';
import 'package:flutter_practice_7/widgets/inputWidget.dart';
import 'package:getwidget/getwidget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkBoxMT = false;
  bool checkBoxBT = false;

  String _NodoText = "";
  String _DireccionText = "";
  String _AlturaText = "";
  String _CargaText = "";

  InputWidget NodoWidget = new InputWidget(
    textIs: 'NODO',
    typeIs: 'a',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLayers(context),
    );
  }

  Stack _buildLayers(BuildContext context) {
    return Stack(
      children: [
        _gradient(context),
        _layoutDesign(context),
      ],
    );
  }

  Container _layoutDesign(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _titlePoste(context),
          SizedBox(height: 30),
          _content(context),
          SizedBox(height: 30),
          _gpsWidget(context),
          SizedBox(height: 30),
          _radioButtons(context),
          SizedBox(height: 30),
          _nextButtom(context),
        ],
      ),
    );
  }

  Widget _gradient(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [const Color(0xfffd8348), const Color(0xfffdc45b)],
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    final _separationSize = 30.0;

    return Column(
      children: [
        NodoWidget,
        SizedBox(
          height: _separationSize,
        ),
        InputWidget(
          textIs: 'DIRECCIÓNa',
          typeIs: 'a',
        ),
        SizedBox(
          height: _separationSize,
        ),
        InputWidget(
          textIs: 'ALTURA',
          typeIs: 'a',
        ),
        SizedBox(
          height: _separationSize,
        ),
        InputWidget(
          textIs: 'CARGA',
          typeIs: 'a',
        ),
      ],
    );
  }

  Widget _titlePoste(BuildContext context) {
    return Text(
      'POSTE',
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'SegoeUI',
          fontSize: 45,
          fontWeight: FontWeight.w300),
    );
  }

  Widget _gpsWidget(BuildContext context) {
    return Icon(
      Icons.place,
      color: Colors.white,
      size: 70,
    );
  }

  Widget _radioButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              "MT",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            GFCheckbox(
              type: GFCheckboxType.circle,
              inactiveBgColor: GFColors.TRANSPARENT,
              inactiveBorderColor: GFColors.WHITE,
              activeBgColor: GFColors.WHITE,
              value: checkBoxMT,
              onChanged: (value) {
                setState(() {
                  checkBoxMT = value;
                });
              },
            ),
          ],
        ),
        SizedBox(width: 50),
        Column(
          children: [
            Text(
              "BT",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            GFCheckbox(
              type: GFCheckboxType.circle,
              inactiveBgColor: GFColors.TRANSPARENT,
              inactiveBorderColor: GFColors.WHITE,
              activeBgColor: GFColors.WHITE,
              value: checkBoxBT,
              onChanged: (value) {
                setState(() {
                  checkBoxBT = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _nextButtom(BuildContext context) {
    // ignore: deprecated_member_use
    return OutlineButton(
      shape: StadiumBorder(),
      textColor: Colors.white,
      child: Text('ENVIAR'),
      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
      borderSide:
          BorderSide(color: Colors.white, style: BorderStyle.solid, width: 4),
      onPressed: () {
        NodoWidget.Imprimir();
      },
    );
  }
}
