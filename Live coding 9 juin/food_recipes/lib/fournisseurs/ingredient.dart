

import 'package:flutter/material.dart';

class Ingredients with ChangeNotifier {
  final int id;
  final String imageIngredient;
  final String nomIngredient;
  final String quantite;

  Ingredients({
    @required this.id, 
    @required this.imageIngredient, 
    @required this.nomIngredient, 
    @required this.quantite
    });

  notifyListeners();
  
}