import 'package:app/fournisseurs/symptomes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FournisseurSymptomes with ChangeNotifier {
  List<Symptomes> _symptomes = [   
    Symptomes(id: 1, emoticon: FontAwesomeIcons.temperatureHigh, title: "Temperature"),
    Symptomes(id: 2, emoticon: FontAwesomeIcons.glassCheers, title: "Snuffle"),
    Symptomes(id: 3, emoticon: FontAwesomeIcons.fire, title: "Head-fire"),
  ];

  List<Symptomes> get symptomes => [..._symptomes];
  
}

