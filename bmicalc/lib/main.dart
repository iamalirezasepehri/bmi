import 'package:bmicalc/homescreen.dart';
import 'package:bmicalc/widgets/leftsidewidget.dart';
import 'package:bmicalc/widgets/rightsidewidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: HomeScreen(),
    );
  }
}
