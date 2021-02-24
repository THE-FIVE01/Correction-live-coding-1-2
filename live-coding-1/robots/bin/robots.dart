import '../lib/classe_bot.dart';
import '../lib/classes_player.dart';
import '../lib/utils.dart';

void main(List<String> arguments) {
  // 1 - creation de l'Objet Bot avec force 100 et sante 1
  final bot = Robot(sante: 100, force: 1);

  // lireText est une fonction qui peremet de recuperer le speudo
  final username = lireText('Entrez votre pseudo :');

  //  compteur : Me donne la possibiliter le compter le nombre de tour
  var compteur = 0;

  print('Un bot se présente à vous et veut se battre...\n');

  //************
  //  LE Do WHILE
  // Permet d'excecuter le code plusieur fois jusqu'a ce que la conditin du while soit juste
  // Il excecute une fois le do avant de verifier la condition
  /// */
  do {
    // Entree
    lireText('Appuyez sur entrée pour lancer les dés');

    // Lancer de Dee aleatoire
    final deeValeur = lanceDee(username);
    bot.sante = bot.sante - deeValeur;

    print('Bot - sante : ${bot.sante}% \n');

    compteur++;
    print('Fin du tour $compteur\n');
  } while (bot.sante > 0);

  print('Le bot a été vaincu !');
}