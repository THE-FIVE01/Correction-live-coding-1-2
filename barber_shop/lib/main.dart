import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:barber_shop/buttons/button.dart';
import 'package:barber_shop/pages-barber/page1.dart';
import 'package:barber_shop/pages-barber/page2.dart';
import 'package:barber_shop/pages-barber/page3.dart';

void main() {
  runApp(MyApp());
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
      home: MyHomePage(title: 'BARBER SHOP'),
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
      backgroundColor: Color(0xFFFEA051),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //-------------------------------------------------Début - Code Image du haut ---------------------------------------
              Container(
                width: MediaQuery.of(context).size.width, //* 1.5,
                height: 270, //MediaQuery.of(context).size.height * 0.3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/beard.jpg"), fit: BoxFit.cover),
                ),
                child: Text(
                  "Bienvenue dans l'univers Barber-Shop",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.grey[700],
                        offset: Offset(3, 2),
                        blurRadius: 3,
                      )
                    ]
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //-------------------------------------------------Fin - Code Image du haut ---------------------------------------
              SizedBox(
                height: 20,
              ),

              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      
                      Button(
                        buttonTitle: 'Page 1',
                        onPress: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page1())),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Button(
                        buttonTitle: 'Page 2',
                        onPress: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2())),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                       Button(
                        buttonTitle: 'Page 3',
                        onPress: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3())),
                      ),
                  ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
