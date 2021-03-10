import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'App StatelessWidget',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 300,
              
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(150),
                
                image: DecorationImage(
                  image: AssetImage("images/thefive.jpeg"),
                  fit: BoxFit.cover
                  ),
              ),
            ),
            Text(
              '___Profil___',
              style: TextStyle(color: Colors.deepOrange, fontSize: 25, fontWeight: FontWeight.bold, ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 10),
                          child: Icon(Icons.account_circle_rounded, color: Colors.blue,),
                        ),
                        Text(
                            'Tialao Nahoussé',
                            //textScaleFactor: 2,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 10),
                          child: Icon(Icons.email_rounded, color: Colors.blue,)
                        ),
                        Text(
                            'tialaonahousse@gmail.com',
                            //textScaleFactor: 2,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 10),
                          child: Icon(Icons.phone_android_rounded, color: Colors.blue,),
                        ),
                        Text(
                            '(+225) 0749360078',
                            //textScaleFactor: 2,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ),
            ElevatedButton(
              onPressed: (){
                print('Vous avez appuyé sur le bouton se connecter');
              }, 
              child: Text(
                'Se connecté',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
            ),
            
          ],
        ),
      ),
    );
  }
  
}