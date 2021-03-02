import 'dart:math';

import 'classe_robot.dart';

class Mechants extends Robot{
  
  // Propriétés 

  String mechantName;
  int vie;
  int vitesseMax;
  List<int> position;
  int pointsDommage;
  bool degatDistance;

 

  // Constructeur ou init

  Mechants({this.mechantName, this.vie = 100, this.vitesseMax = 4, this.position, this.pointsDommage, this.degatDistance = true});

  // Fonctions ou Méthodes

  void presentation () {
    print("____________________________________________________");
    print("Bonjour je m'appelle ${this.mechantName} je suis un robot méchant. J'ai ${this.vie} points de vie et je me déplace à ${this.vitesseMax} cases par seconde. J'ai ${this.pointsDommage} point(s) de dommage - degat à distance ${this.degatDistance}.");
  }

  void attaquerCible(Mechants mechants, Robot robot) {
    print("Le robot méchant ${mechants.mechantName} avec ${mechants.pointsDommage} point(s) de dommage -> attaque le robot gentille ${robot.robotName} : points de Vie : ${robot.vie}");
    int mechantCoups = this.pointsDommage;
    robot.vie = this.vie = this.vie - mechantCoups;
    this.vie =robot.vie;
    print(".............");
    print("le robot gentille ${robot.robotName} après avoir reçue un coups de ${mechants.pointsDommage} point(s) de dommage du robot méchant ${mechants.mechantName} perds $mechantCoups de vie -> new point(s) de Vie ${robot.robotName} : ${robot.vie}  ");
    print("_____________");
    
  }
  

}


