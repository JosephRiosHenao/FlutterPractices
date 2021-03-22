import 'package:flutter/material.dart';
import 'package:flutter_practice_9/pages/favoriteWordsPage.dart';
import 'package:english_words/english_words.dart';

class HomePage extends StatefulWidget {
  static final routeName = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _listOfWords = [];

  @override
  void didChangeDependencies() {
    nouns.take(100).forEach((item) {
      _listOfWords.add(item);
      print(item);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Words"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, FavoriteWordsPage.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _listOfWords.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              elevation: 5.5,
              child: ListTile(
                title: Text(_listOfWords[index]),
                subtitle: Text("Subtitulo $index"),
                leading: Text("$index"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_border)),
              ),
            ),
          );
        },
      ),
    );
  }
}
