

class Robot {
  //directionRobot deplacerrobot;
  String direction;
  String name;
  Position coordonnees;



  // Constructeur

  Robot(Position coordonnees, {this.name, this.direction}){
    this.coordonnees = coordonnees;
  }

  // méthodes ou fonctions
  seDEplacer (String action) {
  int x = 0;
    for (var i = 0 ; i < action.length ; i++) {
      
      
  
      if (action[i] == 'D') {

        print('Je regarde vers - ${this.direction}');
        print("+++++++++++++++++Le robot ${this.name.toUpperCase()} TOURNE A DROITE +++++++++++++++++++++++");
        
        if (this.direction == 'Nord') {
          this.direction = 'Est';
        } else if (this.direction == 'Est') {
          this.direction = 'Sud';
        } else if (this.direction == 'Sud') {
          this.direction = 'Ouest';
        }else if (this.direction == 'Ouest') {
          this.direction = 'Nord';
        }
        print('le robot ${this.name} a tourné à la direction ${this.direction}');
        
      } else if (action[i] == 'A') {
        
        //print("+++++++++++++++++  J'AVANCE +++++++++++++++++++++++");

        if (this.direction == 'Nord') {
          this.direction = 'Nord';
        } else if (this.direction == 'Est') {
          this.direction = 'Est';
        } else if (this.direction == 'Sud') {
          this.direction = 'Sud';
        }else if (this.direction == 'Ouest') {
          this.direction = 'Ouest';
        }
        print('le robot ${this.name} avance');
      } else if (action[i] == 'G') {

        print('Je regarde vers - ${this.direction}');
        print("+++++++++++++++++ Le robots ${this.name.toUpperCase()} TOURNE A GAUCHE +++++++++++++++++++++++");
        
       
        if (this.direction == 'Nord') {
          this.direction = 'Ouest';
        } else if (this.direction == 'Est') {
          this.direction = 'Nord';
        } else if (this.direction == 'Sud') {
          this.direction = 'Est';
        }else if (this.direction == 'Ouest') {
          this.direction = 'Sud';
        }
         print('le robot ${this.name} a tourné à la direction ${this.direction}');
      }else {
        print("Vous devez avoir les caractère suivant : D, A, G pour déplacer le robot");
      }
    }
  }

}

class Position {
  int x;
  int y;

  Position({this.x, this.y});
}

enum directionRobot {
  N,
  S,
  E,
  O
}