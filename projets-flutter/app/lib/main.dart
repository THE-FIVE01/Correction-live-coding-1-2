
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'App StatelessWidget',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: Home2(),
    );
  }
}

// Class Home2 - Code ------------------------------------

class Home2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Container(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.grey,
            ),
          ), 
          
          onPressed: () => print('Arrow back bouton')
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(10)
            ),
              child: Icon(
                Icons.bookmark_rounded,
                color: Colors.grey,
              ),
            ),
          
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage("images/3.png")),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Duplex apartement',
              style: TextStyle(
                //color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 2),
        
            Row(
              children: [
                  Text(
                    'Stockton, New Hampshire',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                  ),
        
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                  ),
                
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                        '(256 Reviews)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                    ),
                  ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.single_bed,
                  color: Colors.grey,
                   size: 20,
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                        '5',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.slow_motion_video_outlined,
                    color: Colors.grey,
                     size: 20,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.grey,
                     size: 20,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

// Class Home - Code ------------------------------------
class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => print('Arrow back bouton')
          ),
        // leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
        title: Text(
          '123 main St',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          Container(
            padding: EdgeInsets.only(top: 10,right: 20, bottom: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side:  BorderSide(color: Colors.grey)
                ),
              ),
              onPressed: () => print('Edit Adress'), 
              child: Text(
                'Edit adress',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              ),
          ),
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              child: Image.asset('images/1.png')
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "We'll share a few curated listings and your estimated listing price",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                //softWrap: true,
                
              ),
            ),

            Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () => print("let's go"), 
                child: Text(
                  "Let's go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
            ),
          ],
         )
    );
  }
}