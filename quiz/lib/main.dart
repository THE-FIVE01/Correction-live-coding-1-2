import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'QUIZ'),
      debugShowCheckedModeBanner: false,
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

  List questions = [
    {
      "id" : 1,
      "question" : "Qu'est ce que Dart ?",
      "reponse" : [
        {
          "id" : 1,
          "r" : "C'est un langage de programmation",
          "status" : true
        },
        {
          "id" : 2,
          "r" : "Un éditeur de texte",
          "status" : false
        },
      ]
    },
    {
      "id" : 2,
      "question" : "Quel est le lien du site web de Flutter",
      "reponse" : [
        {
          "id" : 1,
          "r" : "https://www.google.com",
          "status" : false
        },
        {
          "id" : 2,
          "r" : "https://www.flutter.dev",
          "status" : true
        },
      ]
    },
    {
      "id" : 3,
      "question" : "Qui a créer Flutter",
      "reponse" : [
        {
          "id" : 1,
          "r" : "Google",
          "status" : true
        },
        {
          "id" : 2,
          "r" : "NaN",
          "status" : false
        },
      ]
    },
  ];
 int elementselectionner;
  List<Widget> questionsreponse() {
    List<Widget> l = [];
    questions.forEach((element) { 
      Column row = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "Q N°${element["id"]} : ${element["question"]}", 
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              textScaleFactor: 1.2,
            ),
          ),
          Column(
            children: [
              Row(
                  children: [
                    // element["rep"].foreach((element2) {
                    //   print(element2);
                    // })
                    Radio(
                  value: questions.length, 
                  groupValue: elementselectionner, 
                  onChanged: (var b) {
                    setState(() {
                      elementselectionner = b;
                    });
                  }
                ),
                Text(
                  "${element["reponse"][0]["r"]}", 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                ],
              ),
              //___________
              Row(
                children: [
                  Radio(
                value: questions.length, 
                groupValue: elementselectionner, 
                onChanged: (var b) {
                  setState(() {
                    elementselectionner = b;
                  });
                }
              ),
              Text(
                "${element["reponse"][1]["r"]}", 
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
                ],
              ),
              
            ],
          ),
        ],
      );
      l.add(row);
    });
    
    return l;
  }


  @override
  Widget build(BuildContext context) {
    List<dynamic> q = questions;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: questionsreponse(),
      ),
    );
  }



}
