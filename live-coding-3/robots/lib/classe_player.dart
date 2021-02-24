import 'utils.dart';
import 'classe_bot.dart';


class Players {
  String pseudo;
  int force;
  int sante;

  Players({this.pseudo, this.force, this.sante});


  // Fonctions ou méthodes de l'objet Player

  // fonctions afficher les infos du player

  void displayPlayer(Players p) {
    print('${p.pseudo} - ${p.sante}% - Force : ${p.force}');
  }

  // Fonctions permettant au Player et au Bot d'attaquer

  void attackPlayer(Robot bot, Players player) {
    final deevaleur = lanceDee('Le Bot');
    player.sante -= deevaleur;
  }

}