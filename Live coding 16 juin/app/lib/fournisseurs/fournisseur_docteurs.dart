import 'package:flutter/material.dart';
import '../fournisseurs/docteur.dart';


class FournisseurDocteur with ChangeNotifier {

  List<Docteur> _docteur = [
    Docteur(
      id: 1, 
      imageUrl: 'images/1.jpg', 
      nom: 'Celire Merleau', 
      specialite: Specialites.Chirurgie, etoile: 5.0, 
      contact: '+2250708675434', 
      apropos: "Lacinia vitae volutpat egestas, ducimus cillum unde habitant, integer incidunt magnam, porttitor tincidunt fames! Laboriosam veritatis minima quam sapien senectus dictum similique sagittis ratione? Laudantium suscipit eros mollit ridiculus, libero, nullam debitis autem, eaque iusto nostra aliquet perspiciatis.", localisation: Localisation(hopital: "Lotus Medical Center", adresse: "3517 W Gray Saint denis"),
      prixConsultation: 15000,
      codeCouleur: "0xFF"
    ),
    Docteur(
      id: 2, 
      imageUrl: 'images/2.jpg', 
      nom: 'Yvaner Errad', 
      specialite: Specialites.Dermatologie, etoile: 7.3, 
      contact: '+2250707674422', 
      apropos: "Lacinia vitae volutpat egestas, ducimus cillum unde habitant, integer incidunt magnam, porttitor tincidunt fames! Laboriosam veritatis minima quam sapien senectus dictum similique sagittis ratione? Laudantium suscipit eros mollit ridiculus, libero, nullam debitis autem, eaque iusto nostra aliquet perspiciatis.", localisation: Localisation(hopital: "Grand centre", adresse: "6754 E Avenue 14"),
      prixConsultation: 20000,
      codeCouleur: "0xFF"
    ),
    Docteur(
      id: 3, 
      imageUrl: 'images/3.jpg', 
      nom: 'Christ dela', 
      specialite: Specialites.Therapie, etoile: 4.3, 
      contact: '+2250303562134', 
      apropos: "Lacinia vitae volutpat egestas, ducimus cillum unde habitant, integer incidunt magnam, porttitor tincidunt fames! Laboriosam veritatis minima quam sapien senectus dictum similique sagittis ratione? Laudantium suscipit eros mollit ridiculus, libero, nullam debitis autem, eaque iusto nostra aliquet perspiciatis.", localisation: Localisation(hopital: "Archange Centre Hospitalier", adresse: "9678 C Avenue 25 beril"),
      prixConsultation: 5000,
      codeCouleur: "0xFF"
    ),
    Docteur(
      id: 4, 
      imageUrl: 'images/4.jpg', 
      nom: 'Esid Ellan', 
      specialite: Specialites.Pediatrie, etoile: 5.1, 
      contact: '+2250343562134', 
      apropos: "Lacinia vitae volutpat egestas, ducimus cillum unde habitant, integer incidunt magnam, porttitor tincidunt fames! Laboriosam veritatis minima quam sapien senectus dictum similique sagittis ratione? Laudantium suscipit eros mollit ridiculus, libero, nullam debitis autem, eaque iusto nostra aliquet perspiciatis.", localisation: Localisation(hopital: "Archange Centre Hospitalier", adresse: "9678 C Avenue 25"),
      prixConsultation: 9000,
      codeCouleur: "0xFF"
    ),
    Docteur(
      id: 5, 
      imageUrl: 'images/5.jpg', 
      nom: 'Galeau Jevin', 
      specialite: Specialites.Ophtamologie, etoile: 3.5, 
      contact: '+330707907645', 
      apropos: "Lacinia vitae volutpat egestas, ducimus cillum unde habitant, integer incidunt magnam, porttitor tincidunt fames! Laboriosam veritatis minima quam sapien senectus dictum similique sagittis ratione? Laudantium suscipit eros mollit ridiculus, libero, nullam debitis autem, eaque iusto nostra aliquet perspiciatis.", localisation: Localisation(hopital: "Archange Centre Hospitalier", adresse: "5598 O Avenue 76 sevran"),
      prixConsultation: 18000,
      codeCouleur: "0xFF"
    ),
  ];

  List<Docteur> get docteur => [..._docteur];

  
}