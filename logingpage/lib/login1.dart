import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String email;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
       child: Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   centerTitle: true,
      // ),
      // ------------------------------

      body: Container(
        color: Colors.pink,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Se connecter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              SizedBox(height: 40),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword
                ,
                onChanged: (String string) {
                  setState(() {
                    email = string;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => print("Vous avez cliquer sur Valider"), 
                child: Text(
                  'Valider',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white
                ),
              ),
              
            ],
          ),
        ),
      ),

      // ------------------------------
    ),

    );
   
  }

  
}
