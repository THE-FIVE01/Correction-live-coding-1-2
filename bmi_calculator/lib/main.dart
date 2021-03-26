import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090e22),
        scaffoldBackgroundColor: Color(0xFF090e22),
      ),
      home: MyHomePage(
        title: 'BMI CALCULATOR',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


