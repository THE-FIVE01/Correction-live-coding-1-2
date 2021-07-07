import 'package:flutter/material.dart';
import '../ecrans/formulaire.dart';

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
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        '/': (ctx) => Formulaire(),
      }
    );
  }
}
