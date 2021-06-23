import 'package:flutter/material.dart';
import 'package:foody_form/ecrans/inscription.dart';
import '../ecrans/accueil.dart';

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
        primarySwatch: Colors.blue,
        accentColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      //home: Accueil(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Accueil(),
        Inscription.routeName: (ctx) => Inscription(),
      },
    );
  }
}
