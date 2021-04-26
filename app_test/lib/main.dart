import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:app_test/buttons/button.dart';
import 'package:app_test/pages/page1.dart';
import 'package:app_test/pages/page2.dart';
import 'package:app_test/pages/page3.dart';

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
      home: MyHomePage(title: 'TALAO - APP'),
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
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(buttonTitle: 'Page 1', onPress: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page1())),),
              // Button(buttonTitle: 'Page 1', onPress: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page1())),),
              SizedBox(height: 20.0,),
              Button(buttonTitle: 'Dating App', onPress: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page2())),),
              SizedBox(height: 20.0,),
              Button(buttonTitle: 'Page 3', onPress: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page3())),),
              
            ],
          ),
        ),
      ),
    );
  }
}



