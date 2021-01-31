import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final wordPair = WordPair.random();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to flutter',
      home: RandomWord(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("English Words Generator"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            wordPair.asPascalCase,
            style: TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => newWord(),
          label: Text("Generate new word"),
          icon: Icon(Icons.text_fields_outlined),
        ));
  }

  void newWord() {
    wordPair = WordPair.random();
    setState(() {});
  }
}
