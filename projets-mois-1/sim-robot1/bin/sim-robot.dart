import '../lib/classe_robot.dart';

void main(List<String> arguments) {
  

  // création des robots

  final robot1 = Robot(Position(x: 0,y: 0), direction: 'Nord', name: 'B42');
  final robot2 = Robot(Position(x: 0,y: 0), direction: 'Est', name: 'B52');
  final robot3 = Robot(Position(x: 0,y: 0), direction: 'Ouest', name: 'B32');

  List<Robot> robots = [robot1,robot2,robot3];
  print("____________________________");
  robots[0].seDEplacer('DAAGAG');
  // print("____________________________");
  // robots[1].seDEplacer('DAAGAG');
  // print("____________________________");
  // robots[1].seDEplacer('DAAGAG');
  // print("____________________________");





  
 
 
}
