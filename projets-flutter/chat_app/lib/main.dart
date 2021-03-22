import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

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
              flex: 3,
              child: Container(
                //color:  Color(0xFF1f283b),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            //--------------- 1er Block Image 1 ------------------------------------------
           // SizedBox(height: 60,),
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
                        SizedBox(width: 10,),
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
            // //---------------Fin du 2ième Block 2 Images ------------------------------------------
            //         SizedBox(height: 10,),
            //---------------3ième Block Image Centrer ------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AvatarGlow(
                          glowColor: Colors.blue,
                          endRadius: 90.0,
                          duration: Duration(milliseconds: 2000),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 100),
                          child: Material(     // Replace this child with your own
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              backgroundImage: AssetImage("assets/woman2.jpg"),
                              radius: 40.0,
                            ),
                          ),
                        ),
                        // Container(
                        // width: 100,
                        // height: 100,
                        //   decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(150.0),
                        //   image: DecorationImage(
                        //     alignment: Alignment.center,
                        //     image: AssetImage("assets/woman2.jpg"),
                        //     fit: BoxFit.cover
                        //   ),
                        // ),
                        //   ),
                      ],
                    ),
            //---------------Fin du 3ième Block Image Centrer ------------------------------------------
                    // SizedBox(height: 10,),
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
                    SizedBox(height: 10,),
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
            SizedBox(height: 10,),
            Flexible(
              child: Container(
                //padding: EdgeInsets.all(12),
                width: double.infinity,
                //color: Color(0xFF1c212d),
                child: Column(
                  children: [
                    Container(
                      width: 360,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => HomePage2())
                          );
                        }, 
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
                      height: 55,
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
//----------------------------Home page 2---------------------------------------------
class HomePage2  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Flexible(
              child: Container(
                //color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                //---------------- Les premiers enfants du Flexible 1 ---------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 40.0,
                          ), 
                          onPressed: () => print(''),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Tuesday, 16 March",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 23
                          ),
                        ),
                      ],
                    ),
                //----------------- Fin Les premier enfants du Flexible 1 ---------------
                //---------------- Les 2nd enfants du Flexible 1 ------------------
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.all(10),
                      //width: double.infinity,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Color(0xFF20354e).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "15.00",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DAILLY MEETING",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "Design System Discussion",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "19.00",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "WEBINAIR",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "Design System Discussion",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )

                //---------------- Fin des 2nd enfants du Flexible 1 ---------------

                //---------------- Début du Flexible 2
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Popular Rooms",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(20),
                //width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFF20354e).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(15),
                              child: Text(
                                "Design System Discussion",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150.0),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: AssetImage("assets/profile.jpg"),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                           
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 50,
                              height: 50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150.0),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: AssetImage("assets/entrepreneur.jpg"),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 50,
                              height: 50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150.0),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: AssetImage("assets/man.jpg"),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                           
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 50,
                              height: 50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150.0),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: AssetImage("assets/tiger.jpg"),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150.0),
                              // image: DecorationImage(
                              //   alignment: Alignment.center,
                              //   image: AssetImage("assets/tiger.jpg"),
                              //   fit: BoxFit.cover
                              // ),
                              ),
                              child: Text(
                                "+25",
                                style: TextStyle(
                                  fontSize: 23,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
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
