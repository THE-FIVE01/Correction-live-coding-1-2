import 'package:app/ecrans/details_docteur.dart';
import 'package:app/fournisseurs/fournisseur_clients.dart';
import 'package:app/fournisseurs/fournisseur_docteurs.dart';
import 'package:app/fournisseurs/fournisseur_symptomes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ecrans/accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => FournisseurDocteur(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => FournisseurClient(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => FournisseurSymptomes(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => Accueil(),
          DetailsDocteur.routeName: (ctx) => DetailsDocteur(),
        },
      ),
    );
  }
}

