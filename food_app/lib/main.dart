import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_app/ecrans/food.dart';
import 'package:food_app/ecrans/food_details.dart';

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
      // home: Food(),//MyHomePage(title: 'FOOD-APP'),
      //home: MyHomePage(title: 'FOOD-APP'),
      home: FoodDetails(),
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
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2,), (){
      return Navigator.push(context, MaterialPageRoute(builder: (context) => Food()));
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xFFFCA30A),
        //   title: Text(widget.title),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FOOD-APP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFCA30A),
                ),
              ),
              SpinKitChasingDots(
                color: Color(0xFFFCA30A),
                size: 100.0,
                duration: Duration(milliseconds: 2000),
              ),
              SizedBox(height: 10.0,),
              Text(
                "Loading...",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFCA30A),
                ),
              )
            ],
          ),
        ));
  }
}
