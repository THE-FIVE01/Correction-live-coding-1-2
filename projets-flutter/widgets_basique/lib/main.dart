import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "lew widgets basiques",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false ,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 60,
        leading: IconButton(
          onPressed: () {
            print("Press leading boutton arrow");
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "The Five coding"
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarms_sharp), 
            onPressed: () => print("Press alarms")
          ),
        ],
      ),
      //ackgroundColor: Colors.white,
      body: Container(
        color: Colors.blue,
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hello Codeur",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35
              ),
            ),
            Center(
              child: Card(
                elevation: 10,
                color: Colors.white,
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Image.asset(
                    "assets/rottweiler.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.delete), onPressed: () =>print("test")),

          ],
        ),
      ),
    );
  }
}



