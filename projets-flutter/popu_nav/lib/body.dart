import 'package:flutter/material.dart';
import 'dart:async';

class Body extends StatefulWidget {
  @override
  _BodyState createState () => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: snack,
        style: ElevatedButton.styleFrom(
          primary: Colors.teal
        ),
        child: Text(
          "Appuyé moi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }

  // Un pop up qui va afficher une information sur une durée définie et ensuite qui va se refermer seule

  void snack() {
    SnackBar snackbar = SnackBar(
      content: Text(
        "Je suis une snackbar",
        style: TextStyle(
          fontSize: 20
        ),
      ),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  // Un pop up qui va arriver sur notre écran lorsqu'on aura un problème

  Future<Null> alerte() async {
    return showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Ceci est une alerte"),
          content: Text("Houston nous avons un problème avec notre application. Voulez-vous continuer ?"),
          contentPadding: EdgeInsets.all(10),
        );
      },
    );
  }

}