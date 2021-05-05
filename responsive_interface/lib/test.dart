import 'package:flutter/material.dart';


// void main() {
//   return runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "test",
//       home: Page(title: "bonjour",),
//       theme: ThemeData(
//         primarySwatch: Colors.deepOrange
//       ),
//       debugShowCheckedModeBanner: true,
//     );
//   }  
// }

// ignore: must_be_immutable
class Page extends StatefulWidget {

  Page({Key key, this.title}) : super (key: key);
  String title;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 10,
        title: Text(
          "test"
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(child: Text("test")),
      ),

    );
  }
  
}

