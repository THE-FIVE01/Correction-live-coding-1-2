import 'dart:io';
import 'dart:math';
// import 'classe_bot.dart';
// import 'classe_player.dart';

int lancerDeDee(String playerName) {
  var nbrAleatoire = Random();
  var resultat = (nbrAleatoire.nextInt(6) + 1) + (nbrAleatoire.nextInt(6) + 1);
  print('$playerName a lancé les dés et a obtenu la valeur $resultat');
  return resultat;
}

String lireText(String phrase) {
  print(phrase);
  return stdin.readLineSync();
}


// void afficherInfoRobot(Bot bot) {
//   print('Bot - Force : ${bot.force} - Santé : ${bot.sante}');
// }

// void afficherInfoPlayer(Player player) {
//   print('Joueur -> ${player.pseudo} - Force : ${player.force} - Santé : ${player.sante}');
// }