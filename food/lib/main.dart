import 'package:flutter/material.dart';
import 'package:food/ecrans_food/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(
        title: 'Food - App',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

