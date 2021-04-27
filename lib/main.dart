import 'package:flutter/material.dart';
import 'package:quan_ly_hoi/screen/auth/login/login.dart';
import 'package:quan_ly_hoi/screen/menuBottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: MenuBottomScreen());
  }
}
