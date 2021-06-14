import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:food_recipes/widgets/liste_plat.dart';
import 'package:provider/provider.dart';

import '../fournisseurs/pays.dart';

enum OptionFiltrageFavoris {
  ProduitsFavoris,
  ToutLesProduits
}

class EcranAccueil extends StatefulWidget {
  static const routeName  = '/';
  @override
  _EcranAccueilState createState() => _EcranAccueilState();
}

class _EcranAccueilState extends State<EcranAccueil> {

  var _favorisSelectionner =  false;

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
   final plats = Provider.of<FournisseurPlats>(context).items;
   
  //final affichePlat = nompays ? plats: plats.nomPays;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    

    return Scaffold(
      backgroundColor: Color(0xFF29946B),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
           _selected = index ; 
           if (_selected == 1) {
             _favorisSelectionner = true;
           } else {
             _favorisSelectionner = false;
           }            
          });
        },
        backgroundColor: Color(0xFF29946B),
        
        unselectedIconTheme: IconThemeData(color: Colors.red),
        selectedIconTheme: IconThemeData(color: Colors.orange),
        // unselectedLabelStyle: TextStyle(color: Colors.white),
        // selectedLabelStyle: TextStyle(color: Colors.white),
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
                    Container(
                      height: height * 0.07,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
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
                            width: width * 0.75,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xfffc6474),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3, left: 5),
                              child: FaIcon(FontAwesomeIcons.camera, color: Colors.white, size: 35,),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.07,),
                    Container(
                      height: height * 0.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pays.length,
                        itemBuilder: (context, i) {
                          return  Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                                                  
                                });
                              },
                              child: Column(
                                children: [
                                  FaIcon(FontAwesomeIcons.utensils, size: 30, color: Colors.red[300],),
                                  SizedBox(height: height * 0.01,),
                                  Text(
                                    pays[i].nomPays,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red[400]
                                    ),
                                  ),
                                ],
                              )
                            ),
                          );
                          
                        },
                        
                      ),
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
              child: ListPlats(choixFavoris: _favorisSelectionner,)
            ),
            
          ],
        ),
      ),
    );
  }
}