import 'package:flutter/material.dart';
import 'login1.dart';
import 'login2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage2(title: 'Login Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

