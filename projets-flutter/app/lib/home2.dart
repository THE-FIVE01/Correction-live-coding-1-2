import 'package:flutter/material.dart';
// Class Home2 - Code ------------------------------------
class Home2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
         toolbarHeight: 50,
        // leading: IconButton(
        //   icon: Container(
        //     width: 100,
        //     margin: EdgeInsets.only(left: 15),
        //     decoration: BoxDecoration(
        //         border: Border.all(color: Colors.grey, width: 0.5),
        //         borderRadius: BorderRadius.circular(15)
        //       ),
        //     child: Icon(
        //       Icons.arrow_back_ios_rounded,
        //       color: Colors.grey,
        //     ),
        //   ), 
          
        //   onPressed: () => print('Arrow back bouton')
        // ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: InkWell(
              onTap: () => print("press arrow btn"),
                        child: Container(
                  //margin: EdgeInsets.only(right: 280),
                  //padding: EdgeInsets.all(10),
                  width: 50,
                  //height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey,
                  ),
              ),
            ),
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.only(right: 17),
              //padding: EdgeInsets.all(10),
              width: 50,
              //height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(
                Icons.bookmark_rounded,
                color: Colors.grey,
              ),
          ),
          
        ],
      ),
// Début du corps comprenant l'image et le titre Duplex apartement
      body: Container(
        color: Colors.white, // Couleur de fond
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                width: 380,
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

            SizedBox(height: 4),
// Première ligne contenant texte étoile - etc. ----------------------------
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
                      size: 20,
                    ),
                  ),
        
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                  ),
                
                  Container(
                    margin: EdgeInsets.only(left: 2),
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
            SizedBox(height: 4),
// Deuxième ligne contenant les icons suivies de valeurs en entier 5 2 1 ------------
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.king_bed_outlined,
                  color: Colors.grey,
                   size: 22,
                ),
                Container(
                    margin: EdgeInsets.only(left: 7),
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
                    Icons.bathtub_outlined,
                    color: Colors.grey,
                     size: 20,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 7),
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
                    Icons.kitchen_outlined,
                    color: Colors.grey,
                     size: 20,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 7),
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
            SizedBox(height: 15),
//Troisième ligne contenant la prix en dollars ------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\$1,495',
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2,top: 8),
                  child: Text(
                    '/mo',
                    style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 30),
// élément Description et text de la description ------------------------
            Text(
              'Description:',
              style: TextStyle(
                //color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 7),
            Text(
              'The flat for rent provides the exact comfortable liestyle that you have been loooking for. Covers area as whole the flat also has facilities that come along with this edifice.',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 17,
              ),
            ),
            SizedBox(height: 30),
// Dernière ligne contenant une photo avec - nom et deux bouton - message et appels
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage("images/2.png")),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 8),
                        child: Text(
                          'Owner',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 2),
                        child: Text(
                          'John Smith Doe',
                          style: TextStyle(
                            //color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 75),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.message_rounded,
                          color: Colors.grey,
                          size: 25,
                          ),
                      ),

                       Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green
                        ),
                        child: Icon(
                          Icons.phone_rounded,
                          color: Colors.white,
                          size: 30,
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            
            Divider(
              color: Colors.blueGrey,
              height: 0.1,
              thickness: 0.5,
              indent: 40,
              endIndent: 40,
            ),
            SizedBox(height: 30),
// Bouton Book now ------------------------------------------------------------
            Center(
              child: Container(
                
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => print("press btn Book now"), 
                  child: Text(
                    'Book now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                  
                  ) ,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
