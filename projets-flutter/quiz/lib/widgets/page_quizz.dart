import 'package:flutter/material.dart';
import 'custom_text.dart';

class  PageQuizz extends StatefulWidget {

  @override
  _PageQuizState createState() => _PageQuizState();
  
}

class _PageQuizState extends State<PageQuizz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText('Le Quizz'),
      ),
      body: Center(
        
      ),
    );
  }
  
}