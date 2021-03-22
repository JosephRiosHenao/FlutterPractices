import 'package:flutter/cupertino.dart';

class WordProvider extends ChangeNotifier {
  List<String> _list = [];

  get list => this._list;

  set list(List<String> list) {
    this._list = list;
    notifyListeners();
  }
}
