import 'package:flutter/material.dart';
import 'newText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
  //----------------- Dégradé Linéaire ----------------------
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1f283b), Color(0xFF1c212d)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
  //----------------- Fin du Dégradé Linéaire ----------------------
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                //color:  Color(0xFF1f283b),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            //--------------- 1er Block Image 1 ------------------------------------------
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                          width: 60,
                          height: 60,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/woman.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    ),
            //--------------- Fin 1er Block Image 1 ------------------------------------------
                    // SizedBox(height: 15,),
            //---------------2ième Block 2 Images ------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/man.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 60,
                          height: 60,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/tiger.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    ),
            //---------------Fin du 2ième Block 2 Images ------------------------------------------
                    SizedBox(height: 10,),
            //---------------3ième Block Image Centrer ------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/woman2.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    ),
            //---------------Fin du 3ième Block Image Centrer ------------------------------------------
                    SizedBox(height: 10,),
            //---------------4ième Block 2 Images ------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/profile.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 60,
                          height: 60,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/entrepreneur.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    ),
            //---------------Fin du 4ième Block 2 Images ------------------------------------------

            //---------------Dernier Block 1 Image ------------------------------------------
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                          width: 60,
                          height: 60,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    ),
            //---------------Fin du Dernier Block 1 Image ------------------------------------------
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                //color: Color(0xFF1c212d),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      "Engage and Entertain",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Share your stories with other people, gain connections, and don't forget to have fun!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                //padding: EdgeInsets.all(12),
                width: double.infinity,
                //color: Color(0xFF1c212d),
                child: Column(
                  children: [
                    Container(
                      width: 360,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () => print('Clique sur le boutton Sign In'), 
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF31ddd3),
                          elevation: 3,
                          shadowColor: Color(0xFF31ddd3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 360,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () => print('Clique sur le boutton Register'), 
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF1b2831),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
