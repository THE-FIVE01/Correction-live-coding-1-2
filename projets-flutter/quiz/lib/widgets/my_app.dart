import 'package:flutter/material.dart';
import 'package:quiz/widgets/home.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Quizz vrai ou faux'),
      debugShowCheckedModeBanner: false,
    );
  }
}