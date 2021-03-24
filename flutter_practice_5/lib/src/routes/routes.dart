import 'package:flutter/material.dart';
import 'package:flutter_practice_5/src/pages/alert_page.dart';
import 'package:flutter_practice_5/src/pages/avatar_page.dart';
import 'package:flutter_practice_5/src/pages/card_pages.dart';
import 'package:flutter_practice_5/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
