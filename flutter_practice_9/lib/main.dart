import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_practice_9/pages/favoriteWordsPage.dart';
import 'package:flutter_practice_9/pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favorite Words',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        FavoriteWordsPage.routeName: (context) => FavoriteWordsPage(),
      },
    );
  }
}
