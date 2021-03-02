class Robot {
  mouvement deplacerrobot;
  List coordonnees = [];

  // Constructeur

  Robot({this.deplacerrobot, this.coordonnees});

  // méthodes ou fonctions


}

enum mouvement {
  Avancer,
  Droite,
  Gauche
}