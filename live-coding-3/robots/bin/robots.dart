import 'dart:math';

// ignore: avoid_relative_lib_imports
import '../lib/classe_bot.dart';
// ignore: avoid_relative_lib_imports
import '../lib/classe_player.dart';
// ignore: avoid_relative_lib_imports
import '../lib/utils.dart';

void main(List<String> arguments) {
  // 1 - creation de l'Objet Bot avec force 100 et sante 1
  final bot = Robot(sante: 100, force: 1);

  // lireText est une fonction qui peremet de recuperer le speudo
  final username = lireText('Entrez votre pseudo :');

// creation de l'Objet Plqyers avec force 100 et sante 1
  final player = Players(sante: 100, force: 1);

  // Le pseudo que je recupere dois etre stocker dans player
  player.pseudo = username;

  //  compteur : Me donne la possibiliter le compter le nombre de tour
  var compteur = 0;

  print('Un bot se présente à vous et veut se battre...\n');

  var tourDuJoueur =
      Random().nextBool(); // aleatoirement je verifie qui attaquera en premier
  print(tourDuJoueur); // est-ce vrai ou faux

  //************
  //  LE Do WHILE
  // Permet d'excecuter le code plusieur fois jusqu'a ce que la conditin du while soit juste
  // Il excecute une fois le do avant de verifier la condition
  /// */
  do {
    // lorsque le tour du joeur est true il attaque le bot
    // dans le cas contraire le bot attack
    if (tourDuJoueur) {
      bot.attackBot(player, bot);
    } else {
      player.attackPlayer(bot, player);
    }

    bot.displayBot(bot);
    player.displayPlayer(player);

    compteur++;
    print('Fin du tour $compteur\n');
    // Je passe la main a l'autre joueur
    // si tourDuJoueur avait une valeur true avec le point d'exclamation je change sa valeur 
    // si tourDuJoueur avait une valeur false => elle devient alors true pour passer la main
    tourDuJoueur = !tourDuJoueur;
  } while (bot.sante > 0 && player.sante > 0);

  print('Le bot a été vaincu !');
}

