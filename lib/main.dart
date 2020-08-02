import 'package:doe_mais/views/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.red[900],
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Colors.amberAccent),
      home: Home(),
    );
  }
}
