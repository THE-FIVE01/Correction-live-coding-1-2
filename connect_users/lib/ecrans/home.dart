import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Function(User?) onSignOut;

  Home({required this.onSignOut});

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    onSignOut(null);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil"),
        centerTitle: true,
      ),
      body: ElevatedButton(onPressed: logOut, child: Text("Se déconnecter")),
    );
  }
}
