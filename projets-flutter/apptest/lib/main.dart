import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Les widgets basiques',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
  
}

class  Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
  
}

class  _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('THE-FIVE'),
        leading: Icon(Icons.account_circle),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: false,
      ),
      //backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Aligner tout nos éléments par rapport au centre
          children: [
            Text(
              'Salut les codeurs',
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width / 1.5,
                height: 200.0,
                child: Image.asset('images/the-five.jpeg'),
              ),
            ),
          ],
        ),
      )
    ); 
  }
  
}