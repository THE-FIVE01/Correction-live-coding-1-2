import 'package:flutter/material.dart';


class Pays with ChangeNotifier {
  int id;
  final String nomPays;

  Pays({this.id,this.nomPays});
  notifyListeners();
}

class FounrisseurPays with ChangeNotifier {
  
  List<Pays> _payslist = [
    Pays(id: 1, nomPays: "Italie"),
    Pays(id: 2, nomPays: "France"),
    Pays(id: 3, nomPays: "Usa"),
    Pays(id: 4, nomPays: "Australie"),
    Pays(id: 5, nomPays: "Belgique"),
    Pays(id: 6, nomPays: "Angleterre")
  ];

  List<Pays> get paysData {
    return [..._payslist];
  } 
  

  

  

  

}

