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
          ],
        ),
      ),
    );
  }
}
