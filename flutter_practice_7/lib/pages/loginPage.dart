import 'package:flutter/material.dart';
import 'package:flutter_practice_7/widgets/inputWidget.dart';
import 'package:flutter_practice_7/widgets/pdfGenerate.dart';
import 'package:getwidget/getwidget.dart';
import 'package:geolocator/geolocator.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var locationMessage = "";
  Position _currentPosition;

  bool checkBoxMT = false;
  bool checkBoxBT = false;

  controllerPDF PDF = new controllerPDF();

  InputWidget _NodoWidget = new InputWidget(
    textIs: 'NODO',
    typeIs: 'a',
  );

  InputWidget _DireccionWidget = new InputWidget(
    textIs: 'DIRECCIÓN',
    typeIs: 'a',
  );

  InputWidget _AlturaWidget = new InputWidget(
    textIs: 'ALTURA',
    typeIs: 'a',
  );

  InputWidget _CargaWidget = new InputWidget(
    textIs: 'CARGA',
    typeIs: 'a',
  );

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void initState() {
    PDF.initPDF();
  }

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
        _NodoWidget,
        SizedBox(
          height: _separationSize,
        ),
        _DireccionWidget,
        SizedBox(
          height: _separationSize,
        ),
        _AlturaWidget,
        SizedBox(
          height: _separationSize,
        ),
        _CargaWidget,
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
    return GestureDetector(
      onTap: () async {
        print("Presiono GPS");
        await _getCurrentLocation();
        print("Termino recoleccion de GPS");
      },
      child: Icon(
        Icons.place,
        color: Colors.white,
        size: 70,
      ),
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
      onPressed: () async {
        await PDF.createPDF(
            _NodoWidget.Valor,
            _DireccionWidget.Valor,
            _AlturaWidget.Valor,
            _CargaWidget.Valor,
            _currentPosition.latitude,
            _currentPosition.longitude,
            checkBoxMT,
            checkBoxBT);
      },
    );
  }
}
