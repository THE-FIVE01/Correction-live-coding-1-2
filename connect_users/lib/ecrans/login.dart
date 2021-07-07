import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';


class Login extends StatefulWidget {
  final Function(User) onSignInAno;

  Login({required this.onSignInAno});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String error = "";


  void loginAno() async {
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
    
    if (userCredential.user != null) {
      print(userCredential.user);
      widget.onSignInAno(userCredential.user!);
       
    }
   
  }

  Future<void> createUser() async {
    UserCredential  userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             ElevatedButton(
              onPressed: loginAno,
              child: Text(
                "S'inscrire"
              )
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Entrer un e-mail!";
                  }
                  if (!value.trim().contains("@")) {
                    return "Entrer un e-mail valid!";
                  }
                  return null;
                },
                onSaved: null,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
             Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Entrer un mot de passe";
                  }
                  return null;
                },
                onSaved: null,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
            Text(error),
            Center(
              child: ElevatedButton(
                onPressed: createUser,
                child: Text(
                  "Créer un user"
                )
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}