import 'dart:io';
import '../lib/classe_robot.dart';
import '../lib/mechants.dart';

void main(List<String> arguments) {
  
  // Création des instance de la Classe Robot

 

  final robot1 = Robot(robotName: 'RG40', position: [0,0]);
  // robot1.seDeplacerVers('h',-1);
  robot1.position = robot1.seDeplacerVers(2);
  final robot2 = Robot(robotName: 'BC50', position: [0,0]);
  // robot2.seDeplacerVers('b',3);
  robot2.position = robot2.seDeplacerVers(2);
  final robot3 = Robot(robotName: 'T440', position: [0,0]);
  // robot3.seDeplacerVers('d',2);
  robot3.position = robot3.seDeplacerVers(2);
  final robot4 = Robot(robotName: 'AF50', position: [0,0]);
  // robot4.seDeplacerVers('g',3);
  robot4.position = robot4.seDeplacerVers(2);
  // robot1.seDeplacerVers('h',1);
  // robot1.seDeplacerVers('h',3);
  // robot1.seDeplacerVers('b',2);
  
  List<Robot> robots = [robot1,robot2,robot3,robot4];

  // Création de Méchants Robots 

  final mechants1 = Mechants(mechantName: 'RAPTOR-B52',position: [0,0], pointsDommage: 18, degatDistance: true);
  final mechants2 = Mechants(mechantName: 'RAPTOR-C142',position: [0,3], pointsDommage: 8, degatDistance: false);
  final mechants3 = Mechants(mechantName: 'RAPTOR-XX13',position: [0,0], pointsDommage: 20, degatDistance: true);

  List<Mechants> mechants = [mechants1,mechants2,mechants3];
  

  // Présentation des différents robbots

  print("\n");
  print("========= PRESENTATION DES ROBOTS : ");
  // robots.forEach((element) {element.presentation();});
  robots.forEach((element) {element.presentation();});
  mechants.forEach((element) {element.presentation();});
  print("____________________________________________");

  
  // ________________
mechants.forEach((mechantsRobot) { 
  do {
    if (mechantsRobot.degatDistance) {
      mechantsRobot.attaquerCible(mechantsRobot, robots[0]);
    } else {
      print("le méchant robot : ${mechantsRobot.mechantName} ne peut pas attaquer le robot gentille : ${robots[0].robotName} à distance il n'a pas la fonction Dégât à distance");
      break;
    }
    mechantsRobot.degatDistance = !mechantsRobot.degatDistance;
  } while (mechantsRobot.degatDistance);
});
  

  //__________________
  

  // for (var i = 0; i < robots.length; i++) {
  //   robots[i].presentation();
  // }

  // for (var elements in robots) {
  //   elements.presentation();
  // }
  print("______________________________");
  print("\n");

  /*print("\n");
  print("========= PRESENTATION DES ROBOTS : ");
  print("");
  robot1.presentation();
  print("______________________________");
  robot2.presentation();
  print("______________________________");
  print("\n");*/

  // robot1.seDeplacerVers();

  




}
