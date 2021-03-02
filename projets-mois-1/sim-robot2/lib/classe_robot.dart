


// Création de la classe robot

import 'dart:math';

class Robot {
  // Propriétés

  String robotName;
  int vie;
  int vitesseMax;
  List<int> position;
 

  // int px;
  // int py;
  

  // getter and setter 
 int get getVitesseMax  => vitesseMax;
  
  
  set setVitesseMax(int value) {
    if (value > 0 && value <= vitesseMax) {
      vitesseMax = value;
    } else {
      print("le robot ${this.robotName} net peut pas se déplacer à plus de $value case");
    }
  }

  // Constructeur ou init

  Robot({this.robotName, this.vie = 100, this.vitesseMax = 3, this.position});

  // Fonctions / Méthodes

  void presentation () {
    print("____________________________________________________");
    print("Bonjour je m'appelle ${this.robotName} je suis un robot gentille. J'ai ${this.vie} points de vie et je me déplace à ${this.vitesseMax} cases par seconde. Je suis à la case de coordonnées ${this.position} .");
  }

// void  seDeplacerVers(String action, int vitesse) {
//   if (vitesse > 0 && vitesse <= 3) {

//     this.vitesseMax = vitesse;

    
//   }else{
//     print('\n');
//     print("Le robot ${this.robotName} doit avoir une vitesse comprise dans cet intervalle [1 à 3] pour se déplacer");
//   }

//   switch (action) {
//       case 'h' :

//         print('${this.robotName} se déplace vers le Haut');
//         this.position[1] = this.position[1] + 1;
//         break;
//       case 'b' : 
//         print('${this.robotName} se déplace vers le Bas');
//         this.position[1] = this.position[1] - 1;
//         break;
//       case 'd' : 
//         print('${this.robotName} se déplace vers la Droite');
//         this.position[0] = this.position[0] + 1;
//         break;
//       case 'g' : 
//         print('${this.robotName} se déplace vers la Gauche');
//         this.position[0] = this.position[0] - 1;
//         break;
//       default:
//         print('Erreur Appuyer uniquement les lettres h, b, d, ou g ...');
//     }
    
//   }

  seDeplacerVers (int tour) {
    
    for (var i = 1; i <= tour; i++) {
      int x =  this.position[0]  = Random().nextInt(10);
      int y =  this.position[1]  = Random().nextInt(10);
      
      List positionRobot = this.position = [x,y];

      tour++;
      if (positionRobot[0] < 0 && positionRobot[1] > 0 ) {
        print('${this.robotName} est a gauche de ${positionRobot[0]} et en haut de ${positionRobot[1]}');
      } else if(positionRobot[0] < 0 && positionRobot[1] < 0) {
        print('${this.robotName} est a gauche de ${positionRobot[0]} et en bas de ${positionRobot[1]}');
      }else if(positionRobot[0] > 0 && positionRobot[1] < 0){
        print('${this.robotName} est a Droite de ${positionRobot[0]} et en bas de ${positionRobot[1]}');
      }else if (positionRobot[0] > 0 && positionRobot[1] > 0) {
        print('${this.robotName} est a Droite de ${positionRobot[0]} et en haut de ${positionRobot[1]}');
      } else {
        print('${this.robotName} est au point ${positionRobot[0]} abcisse et en haut ordonnée de ${positionRobot[1]}');
      }
      return positionRobot;
    } 
    
  }
  

}