// Class Home - Code ------------------------------------
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
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
                    fontSize: 15,
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