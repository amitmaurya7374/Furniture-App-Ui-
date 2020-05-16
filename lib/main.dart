import 'package:flutter/material.dart';
import 'package:furniture_app/screens/detailPage.dart';
import 'package:furniture_app/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      routes: {
        DetailPage.routeName:(context)=>DetailPage(),
      },
    );
  }
}