import 'dart:io';
import 'dart:math';

import 'classe_bot.dart';
import 'classe_player.dart';


int lanceDee(String playerName) {
  final aleatoire = Random();
  final nombreAleatoire = aleatoire.nextInt(6) + 1 + aleatoire.nextInt(6) + 1;
  print('$playerName a lancé les dés et a obtenu la valeur $nombreAleatoire');
  return nombreAleatoire;
}

String lireText(String question) {
  print(question);
  return stdin.readLineSync();
}
// fonctions afficher les infos du Player et du Robot

// void displayPlayer(Players p) {
//   print('${p.pseudo} - ${p.sante}% - Force : ${p.force}');
// }

// void displayBot(Robot b) {
//   print('Bot - ${b.sante}% - Force : ${b.force}');
// }

// Fonctions permettant au Player et au Bot d'attaquer

// void attackBot(Players player, Robot bot) {
//   lireText('Appuyez sur entrée pour lancer les dés');
//   final deevaleur = lanceDee(player.pseudo);
//   bot.sante = bot.sante - deevaleur;
// }

// void attackPlayer(Robot bot, Players player) {
//   final deevaleur = lanceDee('Le Bot');
//   player.sante -= deevaleur;
// }
