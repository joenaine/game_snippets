import 'package:flutter/material.dart';
import 'package:scrollable_draggable/game.dart';
import 'package:scrollable_draggable/game3.dart';
import 'package:scrollable_draggable/game4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Game4(),
    );
  }
}
