import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';


class Login extends StatelessWidget {
  final Function(User) onSignInAno;

  Login({required this.onSignInAno});

  void loginAno() async {
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
    
    if (userCredential.user != null) {
      print(userCredential.user);
      onSignInAno(userCredential.user!);
       
    }
   
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulaire de connection"
        ),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: loginAno,
        child: Text(
          "S'inscrire"
        )
      ),
    );
  }
}