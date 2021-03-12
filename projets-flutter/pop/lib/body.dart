import 'package:flutter/material.dart';
import 'dart:async';
import 'nouvelle_page.dart';

class Body extends StatefulWidget {
  
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 50,
        child: ElevatedButton(
          // onPressed: (() => dialog('Bienvenue a Nice', 'admirez le vieux NIce, la promenade des anglais et ses quartiers pittoresques')), 
          onPressed: versNouvellePage,
          child: Text(
            'Appuyez moi',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 10,
          ),
          
        ),
      ),
    );
  }

 // Fonction snackbar
  void snack() {
    SnackBar snackbar = SnackBar(
      
      content: Text(
        'Je suis une snackbar',
        textScaleFactor: 2.0,
      ),
      duration: Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  // Fonction AlertDialog  showDialog -> AlertDialog

  Future<Null> alerte() async {
    return showDialog(
      context: context, 
      barrierDismissible: false, // true fais que lorsqu'on appuye hors de la vue le popup va s'en aller
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Ceci est une alerte',
            textScaleFactor: 1.5,
          ),
          content: Center(
            child: Text(
              'Houston nous avons un problème avec notre application. Voulez vous continuer ?'
            ),
          ),
          contentPadding: EdgeInsets.all(5.0),
          actions: <Widget> [
            // Button Annuler
            TextButton(
              onPressed: () {
                print('Abort'); 
                Navigator.pop(context);
              }, 
              child: Text(
                "Annuler",
                style:  TextStyle(
                  color: Colors.red
                ),
              ),
             ),
            // Button Continuer
            TextButton(
              onPressed: () {
                print('Proceed'); 
                Navigator.pop(context);
              }, 
              child: Text(
                "Continuer",
                style:  TextStyle(
                  color: Colors.blue
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.teal,
              ),
             ),
          ],
        );
      }
    );
  }

  // Fonction  simpleDialog -  showDialog -> AlertDialog

  Future<Null> dialog(String titre, String desc) async {
    return showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Center(
            child: Text(
              titre,
              textScaleFactor: 1.4,
            ),
          ),
          contentPadding: EdgeInsets.all(10.0),
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(desc)
            ),
            //SizedBox(height: 4),
            ElevatedButton(
              onPressed: () {
                print("Appuyé");
                Navigator.pop(context);
              }, 
              child: Text(
                "OK",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal
              ),
            ),
          ],
        );
      }
    );
  }

  void versNouvellePage() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return NouvellePage('Tialao page 2');
    }));
  }


}
 

  