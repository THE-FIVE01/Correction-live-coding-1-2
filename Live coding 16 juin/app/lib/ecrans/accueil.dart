
import 'package:app/widgets/grille_docteurs.dart';
import 'package:app/widgets/symptomes_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Accueil extends StatefulWidget {
  static const routeName = '/';

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {

    

    final width  = MediaQuery.of(context).size.width;
    final height  = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            //-----------------------------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width * 0.42,
                      //color: Colors.red,
                      child: Text(
                        "Elsie Adskins",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    //SizedBox(width: width * 0.01,),
                    Container(
                      child: FaIcon(
                        FontAwesomeIcons.handPointer,
                        size: 30,
                        color: Color(0xFFFECF4E),
                      ),
                    ),
                    SizedBox(width: width * 0.2,),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('./images/1.jpg'),
                    )
                  ],
                ),
             //-----------------------------------------------------------------------------------
             SizedBox(height: height * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  //-----------------------------------------------------------------------------------
                    Container(
                      height: height * 0.16,
                      width: width * 0.4,
                       decoration: BoxDecoration(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            //offset: Offset.zero,
                            spreadRadius: 1.3,
                            blurRadius: 1.3
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Color(0xFF7165D6)
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.02,),
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "Clinic visit",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                          
                          Container(
                            padding: EdgeInsets.only(left: 10, bottom: 20),
                            child: Text(
                              "Make an appointment",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 11
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  //-----------------------------------------------------------------------------------
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: height * 0.16,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              radius: 18,
                              child: FaIcon(
                                FontAwesomeIcons.home,
                                color: Color(0xFF7165D6),
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.02,),
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "Home visit",
                              style: TextStyle(
                                //color: Colors.white
                              ),
                            ),
                          ),
                          
                          Container(
                            padding: EdgeInsets.only(left: 10, bottom: 20),
                            child: Text(
                              "Call the doctor home",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11
                              ),
                            ),
                          )
                        ],
                      ),
                      
                    ),
                  ],
                ),
            //-----------------------------------------------------------------------------------
                SizedBox(height: height * 0.02,),

                Container(
                  width: width * 0.7,
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "What are your symptoms?",
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
             //---------------------------------------SYMPTOMES--------------------------------------------
                SymptomesItems(),
            //-----------------------------------------------------------------------------------
                SizedBox(height: height * 0.025,),

                Container(
                  width: width * 0.7,
                  padding: EdgeInsets.only(left: 10, bottom: 20),
                  child: Text(
                    "Popular doctors",
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: height / 2,
                  color: Colors.red,
                  child: GrilleDocteur(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

