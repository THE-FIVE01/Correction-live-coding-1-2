import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:food_recipes/widgets/liste_plat.dart';

import 'package:provider/provider.dart';




class EcranAccueil extends StatefulWidget {

  @override
  _EcranAccueilState createState() => _EcranAccueilState();
}

class _EcranAccueilState extends State<EcranAccueil> {


  @override
  Widget build(BuildContext context) {
    //final plats = Provider.of<FournisseurPlats>(context);
  

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    int _selected = 0;

    return Scaffold(
      backgroundColor: Color(0xFF29946B),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
           _selected = index;             
          });
        },
        backgroundColor: Color(0xFF29946B),
        selectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: _selected,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home, size: 20, color: Colors.white,), label: "Accueil"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart, size: 20, color: Colors.white,), label: "Favoris")
        ]
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
          color: Colors.white,
        ),
       height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: 20),
                width: width * 0.98,
                //color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: height * 0.01,),
                    Text(
                      "for recipes",
                      style: TextStyle(
                        fontSize: 30,
                        //fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: height * 0.03,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          width: width * 0.75,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 9),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                                child: FaIcon(FontAwesomeIcons.search, color: Colors.grey,),
                              ),
                              hintText: "dish name",
                              hintStyle: TextStyle(fontSize: 20,)
                            ),
                            
                          ),
                          
                        ),
                        SizedBox(width: width * 0.04,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          width: width * 0.15,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            color: Color(0xfffc6474),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                          ),
                          child: Center(child: FaIcon(FontAwesomeIcons.camera, color: Colors.white,)),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.07,),
                    Row(
                      children: [
                       Column(
                         children: [
                           InkWell(
                             onTap: () {},
                             child: FaIcon(FontAwesomeIcons.utensils, size: 30, color: Colors.red[300],)
                            ),
                           SizedBox(height: height * 0.01,),
                           Text(
                             "Thai",
                             style: TextStyle(
                               fontSize: 20,
                               color: Colors.red[400]
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: width * 0.07,),
                       Column(
                         children: [
                           InkWell(
                             onTap: () {},
                             child: FaIcon(FontAwesomeIcons.utensils, size: 30, color: Colors.grey[400],)
                            ),
                           SizedBox(height: height * 0.01,),
                           Text(
                             "Italie",
                             style: TextStyle(
                               fontSize: 20
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: width * 0.07,),
                       Column(
                         children: [
                           InkWell(
                             onTap: () {},
                             child: FaIcon(FontAwesomeIcons.utensils, size: 30, color: Colors.grey[400],)
                            ),
                           SizedBox(height: height * 0.01,),
                           Text(
                             "USA",
                             style: TextStyle(
                               fontSize: 20
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: width * 0.07,),
                       Column(
                         children: [
                           InkWell(
                             onTap: () {},
                             child: FaIcon(FontAwesomeIcons.utensils, size: 30, color: Colors.grey[400],)
                            ),
                           SizedBox(height: height * 0.01,),
                           Text(
                             "Australie",
                             style: TextStyle(
                               fontSize: 20
                             ),
                           ),
                         ],
                       ),
                    
                      ],
                    ),
                     SizedBox(height: height * 0.04,),
                     Text(
                       "Trending",
                       style: TextStyle(
                         fontSize: 30
                       ),
                     ),
                     SizedBox(height: height * 0.050,),
                  ],
                ),
              ),
            ),
            //SizedBox(width: width * 0.03,),
            Expanded(
              child: ListPlats()
            ),
            
          ],
        ),
      ),
    );
  }
}