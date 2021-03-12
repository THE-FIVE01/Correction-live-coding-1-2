import 'package:flutter/material.dart';
import 'body.dart';

class NouvellePage extends StatelessWidget {

  NouvellePage(String title) {
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'je suis une nouvelle page',
          textScaleFactor: 2.0,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.deepOrange,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}