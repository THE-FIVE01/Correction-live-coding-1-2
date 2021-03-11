
import 'dart:ui';

import 'package:flutter/material.dart';

import 'home2.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'App StatelessWidget',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: Home2(),
    );
  }
}




