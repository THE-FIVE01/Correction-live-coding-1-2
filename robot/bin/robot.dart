import 'dart:io';
// ignore: avoid_relative_lib_imports
import '../lib/classe_bot.dart';
// ignore: avoid_relative_lib_imports
import '../lib/utils.dart';

void main(List<String> arguments) {
  
  var robot = Bot(force: 1, sante: 100);


  var nomJoueur = lireText('Entrer votre nom : ');
  //var nomJoueur = stdin.readLineSync();

  //  Le compteur me donne la possibiliter le compter le nombre de tour
  var compteur = 0;

  print('Un bot se présente à vous et veut se battre...\n');

  while (robot.sante > 0) {
    lireText('Appuyez sur "Entrer" pour lancer les dés : ');

    var resutatNbrealeatoire = lancerDeDee(nomJoueur);
    robot.sante = robot.sante - resutatNbrealeatoire;

    print('Bot -> santé : ${robot.sante}%');
    compteur++;
    print('Fin du tour $compteur\n');

  }

  print('Le bot a été vaincu !');

}
