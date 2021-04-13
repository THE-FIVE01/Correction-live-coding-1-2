import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{
  runApp(MyApp());
  await  getWeatherInfos();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'WEATHER'),
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
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              
            )
          ],
        ),
      ),
    );
  }
}

Future getWeatherInfos() async {
  var url = Uri.parse("https://community-open-weather-map.p.rapidapi.com/weather");
  var reponse = await http.get(url);
  var body = json.decode(reponse.body);
  try {
    if (reponse.statusCode == 200) {
      
    } else {
    }
    
  } catch (e) {
    print("Erreur: $e");
  }
}