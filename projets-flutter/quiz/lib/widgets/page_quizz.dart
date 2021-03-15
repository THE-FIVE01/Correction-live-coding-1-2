import 'dart:ffi';

import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:quiz/models/question.dart';

import 'custom_text.dart';
import 'custom_text.dart';




class  PageQuizz extends StatefulWidget {

  @override
  _PageQuizState createState() => _PageQuizState();
  
}

class _PageQuizState extends State<PageQuizz> {

 Question question;

  List<Question> listeQuestions = [
    Question('La devise de la Belgique est l\'union fait la force', true, '', 'belgique.JPG'),
    Question('La lune va finir par tomber sur terre à cause de la gravité', false, 'Au contraire la lune s\'éloigne', 'lune.jpg'),
    Question('La Russie est plus grande en superficie que Pluton', true, '', 'russie.jpg'),
    Question('Nyctalope est une race naine d\'antilope', false, 'C’est une aptitude à voir dans le noir', 'nyctalope.jpg'),
    Question('Le Commodore 64 est l\’oridnateur de bureau le plus vendu', true, '', 'commodore.jpg'),
    Question('Le nom du drapeau des pirates es black skull', false, 'Il est appelé Jolly Roger', 'pirate.png'),
    Question('Haddock est le nom du chien Tintin', false, 'C\'est Milou', 'tintin.jpg'),
    Question('La barbe des pharaons était fausse', true, 'A l\'époque déjà ils utilisaient des postiches', 'pharaon.jpg'),
    Question('Au Québec tire toi une bûche veut dire viens viens t\'asseoir', true, 'La bûche, fameuse chaise de bucheron', 'buche.jpg'),
    Question('Le module lunaire Eagle de possédait de 4Ko de Ram', true, 'Dire que je me plains avec mes 8GO de ram sur mon mac', 'eagle.jpg'),
  ];
  

  int index = 0;
  int score = 0;

  @override
  void iniState() {
    super.initState();
    question = listeQuestions[index]; // Arriver directement à la première question
  }

  @override
  Widget build(BuildContext context) {
    double taille = MediaQuery.of(context).size.width * 0.75;
    return Scaffold(
      appBar: AppBar(
        title: CustomText('Le Quizz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomText("Question numéro ${index + 1}", color: Colors.grey[900], factor: 1.25,),
            CustomText("Score: $score / $index", color: Colors.grey[900], factor: 1.25,),
            Card(
              elevation: 10.0,
              child: Container(
                height: taille,
                width: taille,
                child: Image.asset(
                  "quizz-assets/${listeQuestions[index].imagePath}",
                  fit: BoxFit.cover,
                  ),
              ),
            ),
            //les questions
            CustomText(listeQuestions[index].question, color: Colors.grey[900], factor: 1.3),
            // Les bouttons vrai ou faux
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                boutonBool(true),
                boutonBool(false)
              ],
            ),
          ],
        ),
      ),
    );
  }
// Fonction boutonBool qui retourne un bouton  
  ElevatedButton boutonBool(bool b) {
    return ElevatedButton(
      onPressed: (() => dialogue(b)),
      child: CustomText((b)? "Vrai": "Faux", factor: 1.25),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        elevation: 10.0
      ),
    );
  }

  Future<Null> dialogue(bool b) async{
    bool bonneReponse = (b == listeQuestions[index].reponse);
    String vrai = "quizz-assets/vrai.jpg"; // Créer une image pour la vraie reponse
    String faux = "quizz-assets/faux.jpg"; // Créer une image pour la fausse reponse
    if (bonneReponse) {
      score++;
    } 
    return showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: CustomText(
            (bonneReponse)? "C'est gagné!": "Oups! perdu...", 
            factor: 1.4, 
            color: (bonneReponse)? Colors.green: Colors.red,
          ),
          contentPadding: EdgeInsets.all(20.0),
          children: [
            Image.asset((bonneReponse)? vrai: faux, fit:  BoxFit.cover,),
            Container(height: 25.0,), // pour ajouter de l'espace
            CustomText(listeQuestions[index].explication, factor: 1.25, color: Colors.grey[900],),
            Container(height: 25.0,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                questionSuivante();
              },
              child: CustomText(
                "Au suivant", 
                factor: 1.25,
                color: Colors.white
              ),
            )
          ],
        );
      }
    );
  }

  Future<Null> alerte() async {
    return showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          title: CustomText("C'est fini", color: Colors.blue, factor: 1.25,),
            contentPadding: EdgeInsets.all(10.0),
            content: CustomText("Votre score: $score / ${index + 1}", color: Colors.grey[900],),
            actions: <Widget> [
              TextButton(
                onPressed: (() {
                  Navigator.pop(buildContext);
                  Navigator.pop(context);
                }), 
                child: CustomText("OK", factor: 1.25, color: Colors.blue),
                style: TextButton.styleFrom(
                  primary: Colors.blue
              ),
            ),
          ],
        );
      }
    );
  }

  void questionSuivante() {
    if (index < listeQuestions.length - 1) {
      index++;
      setState(() {
        question = listeQuestions[index];
      });
    } else {
      alerte();
    }
  }

}