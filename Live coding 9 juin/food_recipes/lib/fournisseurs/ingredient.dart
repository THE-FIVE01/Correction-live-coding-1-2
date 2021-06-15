

import 'package:flutter/material.dart';


enum Unite {
  kg,
  g,
  cg,
  mg,
  l,
  cl,
  ml,
}

class Ingredients with ChangeNotifier {
  final int id;
  final String imageIngredient;
  final String nomIngredient;
  final double valeurUnite;
  final Unite unite;

  Ingredients({
    @required this.id, 
    @required this.imageIngredient, 
    @required this.nomIngredient, 
    @required this.valeurUnite,
    this.unite
    });

  retourneUnite(Unite unite) {
  switch (unite) {
    case Unite.kg:
      return 'kg';
      break;
    case Unite.g:
      return 'g';
      break;
    case Unite.cg:
      return 'cg';
      break;
    case Unite.mg:
      return 'mg';
      break;
    case Unite.l:
      return 'l';
      break;
    case Unite.cl:
      return 'cl';
      break;
    case Unite.ml:
      return 'ml';
      break;
    default:
      return '';
  }
}

  notifyListeners();
  
}


