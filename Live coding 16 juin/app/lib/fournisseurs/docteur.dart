import 'package:flutter/material.dart';

enum Specialites {
  Pediatrie,
  Dermatologie,
  Therapie,
  Ophtamologie,
  Chirurgie

}

class Docteur with ChangeNotifier{
  @required final int id;
  @required final String imageUrl;
  @required final String nom;
  @required final Specialites specialite;
  @required final double etoile;
  @required final String contact;
  @required final String apropos;
  @required final Localisation localisation;
  @required final double prixConsultation;
  @required final String codeCouleur;

  Docteur({this.id, this.imageUrl, this.nom, this.specialite, this.etoile, this.contact, this.apropos, this.localisation, this.prixConsultation, this.codeCouleur});

  retournespecialite(Specialites specialites) {
    switch (specialites) {
    case Specialites.Chirurgie:
      return "Chirurgie";
      break;
    case Specialites.Dermatologie:
      return "Dermatologie";
      break;
    case Specialites.Ophtamologie:
      return "Ophtamologie";
      break;
    case Specialites.Pediatrie:
      return "Pédiatrie";
      break;
    case Specialites.Therapie:
      return "Thérapie";
      break;
    default:
      return '';
  }
}



  notifyListeners();

}


// class Specialite with ChangeNotifier {
//   @required final int id;
//   @required final String nomSpecialite;

//   Specialite({this.id, this.nomSpecialite});

//   notifyListeners();
  
// }

class Localisation {
  final String hopital;
  final String adresse;

  Localisation({this.hopital, this.adresse});
}


