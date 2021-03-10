import 'dart:ffi';

import 'package:flutter/material.dart';
import 'musique.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Five Music',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Five Music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Musique> maListeDeMusique = [
    Musique(titre: 'Theme Swift', artiste: 'Codabee', imagePath: 'images/un.jpg', urlsong: 'https://codabee.com/wp-content/uploads/2018/06/un.mp3'),
    Musique(titre: 'Theme Flutter', artiste: 'Codabee', imagePath: 'images/deux.jpg', urlsong: 'https://codabee.com/wp-content/uploads/2018/06/deux.mp3')
  ];

  //_________
  Musique maMusiqueActuelle;
  @override
  void initState() {
    super.initState();
    maMusiqueActuelle = maListeDeMusique[0];
  }
  //_________
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              elevation: 9,
              child: Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset(maMusiqueActuelle.imagePath),
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
