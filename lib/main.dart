import 'package:flutter/material.dart';
import 'package:flutterdrawerapp/screens/homePage.dart';
import 'package:flutterdrawerapp/screens/homePage1.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: HomePage(),
      routes:  {
        '/home1': (context) => HomePage(),
        '/home2': (context) => HomePage1(),
        '/home3': (context) => HomePage(),
      },
    )
  );
}
