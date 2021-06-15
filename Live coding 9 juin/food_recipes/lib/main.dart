import 'package:flutter/material.dart';
import 'package:food_recipes/ecrans/ecran_details_plat.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:food_recipes/fournisseurs/pays.dart';
import 'package:food_recipes/widgets/liste_plat.dart';
import 'package:provider/provider.dart';
import './ecrans/ecran_acceuil.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => FournisseurPlats(),
        ),
         ChangeNotifierProvider(
          create: (ctx) => FounrisseurPays(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepOrange,
          fontFamily: 'ComicNeue'
        ),
        debugShowCheckedModeBanner: false,
        //home: EcranAccueil(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => EcranAccueil(),
          EcranDetailsPlats.routeName: (ctx) => EcranDetailsPlats(),
          
        },
      ),
    );
  }
}


