import 'utils.dart';
import 'classe_player.dart';


class Robot {
  int sante;
  int force;
  Robot({this.force, this.sante});


  // Fonctions ou méthodes de l'objet Robot

  // fonctions afficher les infos du Robot
  
  void displayBot(Robot b) {
    print('Bot - ${b.sante}% - Force : ${b.force}');
  }

  // Fonctions permettant au Bot d'attaquer

  void attackBot(Players player, Robot bot) {
    lireText('Appuyez sur entrée pour lancer les dés');
    final deevaleur = lanceDee(player.pseudo);
    bot.sante = bot.sante - deevaleur;
  }


}