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
      home: MyHomePage(title: 'The-Five - calcul calories'),
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

  double poids;
  bool genre = false;
 
//-------------
  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child:
         Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: setColor(),
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              texteAvecStyle(
                'Remplissez tous les champs pour obtenir votre besoin journalier en calories',
                fontSize: 17.0
              ),
              Card(
                elevation: 10.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        texteAvecStyle("Femme", color: Colors.pink, fontSize: 17.0),
                        Switch(
                          value: genre, 
                          inactiveTrackColor: Colors.pink,
                          activeColor: Colors.blue,
                          onChanged: (bool b) {
                            setState(() {
                              genre = b;
                            });
                          }
                        ),
                        texteAvecStyle("Homme", color: Colors.blue, fontSize: 17.0),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (String string) {
                        setState(() {
                          poids = double.tryParse(string);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Entrer votre poids en kilos.',
                        labelStyle: TextStyle(
                          //color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
  //---------
  Color setColor() {
    if (genre == true) {
      return Colors.blue;
    } else {
      return Colors.pink;
    }
  }

  Text texteAvecStyle(String data, {color: Colors.black, fontSize: 15.0}) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontSize
      ),
    );
  }
}
