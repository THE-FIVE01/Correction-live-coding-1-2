import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'ingredient.dart';

class Plat with ChangeNotifier {
  final int id;
  final String imagePlat;
  final String nom;
  final List<int> idPays;
  final double etoile;
  final int kcal;
  final int duree;
  final int prix;
  final Color couleurFond;
  final List<Ingredients> ingredients;
  bool estFavoris;

  Plat({
    @required this.id, 
    @required this.imagePlat, 
    @required this.nom, 
    @required this.idPays,
    this.etoile = 0.0, 
    @required this.kcal, 
    @required this.duree, 
    @required this.prix,
    @required this.couleurFond, 
    @required this.ingredients,
    this.estFavoris = false,
  });

  void statusDuPlat() {
    estFavoris = !estFavoris;
    notifyListeners();
  }
  
}

