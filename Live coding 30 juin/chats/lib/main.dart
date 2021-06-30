import 'package:chats/ecrans/formulaire.dart';
import 'package:flutter/material.dart';
import 'ecrans/accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      debugShowCheckedModeBanner: false,
      // home: Accueil(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Accueil(),
        Formulaires.routeName: (ctx) => Formulaires()
      },
    );
  }
}
