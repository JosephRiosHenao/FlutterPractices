import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationApp(),
    );
  }
}

class LocationApp extends StatefulWidget {
  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  var locationMessage = "";
  Position _currentPosition;

  /*void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState(() {
      locationMessage =
          "$position.latitude\n$position.longitude\n$position.altitude";
    });
  }*/

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            Text(
              "Get user Geolocation",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            if (_currentPosition != null)
              Text(
                "LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}",
                textAlign: TextAlign.center,
              ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {
                //getCurrentLocation();
                _getCurrentLocation();
              },
              child: Text(
                "Click me!",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              splashColor: Colors.white,
              minWidth: 100,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
