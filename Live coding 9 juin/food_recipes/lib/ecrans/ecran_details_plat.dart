import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:food_recipes/ecrans/ecran_acceuil.dart';
import 'package:food_recipes/fournisseurs/fournissseur_plats.dart';
import 'package:provider/provider.dart';

class EcranDetailsPlats extends StatelessWidget {
  static const routeName  = '/detailsplats';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final platId = ModalRoute.of(context).settings.arguments as int;
    //print(platId);
    final detailPlats = Provider.of<FournisseurPlats>(context, listen: false).rechercherParId(platId);

    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Container(
          width: width * 0.6,
          child: Text(
            detailPlats.nom,
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.heart, color: Colors.black, size: 25,),
            onPressed: () {
              detailPlats.statusDuPlat();
            }
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60), 
                  bottomRight: Radius.circular(60),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image(
                        width: width * 0.5,
                        image: AssetImage(detailPlats.imagePlat),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => print("test"),
                        child: Column(
                          children: [
                            FaIcon(FontAwesomeIcons.clock, size: 30, color: Colors.grey[400],),
                            SizedBox(height: height * 0.01,),
                            Text(
                              "${detailPlats.duree} min",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        )
                      ),
                       InkWell(
                        onTap: () => print("test"),
                        child: Column(
                          children: [
                            FaIcon(FontAwesomeIcons.star, size: 30, color: Color(0xFFfeab04),),
                            SizedBox(height: height * 0.01,),
                            Text(
                              detailPlats.like.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        )
                      ),
                       InkWell(
                        onTap: () => print("test"),
                        child: Column(
                          children: [
                            FaIcon(FontAwesomeIcons.fire, size: 30, color: Colors.grey[400],),
                            SizedBox(height: height * 0.01,),
                            Text(
                              "${detailPlats.kcal} kcal",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.06,),
            Container(
              padding: EdgeInsets.only(left: width * 0.05,),
              child: Text(
                "Ingredients",
                style: TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: height * 0.02,),
            Container(
              height: height * 0.25,
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: detailPlats.ingredients.length,
                itemBuilder: (context, i) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          width: width * 0.25,
                          height: height * 0.12,
                          image: NetworkImage(detailPlats.ingredients[i].imageIngredient),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: height * 0.02,),
                      Text(
                        detailPlats.ingredients[i].nomIngredient,
                        style: TextStyle(
                          //color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: height * 0.006,),
                      Text(
                        detailPlats.ingredients[i].quantite,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
            SizedBox(height: height * 0.02,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height * 0.12,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                // Navigator.pushReplacementNamed(context, EcranAccueil.routeName);
              },
              icon: FaIcon(FontAwesomeIcons.shoppingCart, size: 25, color: Colors.black,)
            ),
            SizedBox(width: width * 0.02,),
            Text(
              "Buy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: width * 0.15,),
            Container(
              width: width * 0.5,
              height: height * 0.075,
              //color: Colors.white,
              decoration: BoxDecoration(
                color: Color(0xFFFFAB04),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start cooking",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(width: width * 0.04,),
                 ClipRRect(
                   borderRadius: BorderRadius.circular(30),
                   child: Container(
                     width: 40,
                     height: 40,
                     color: Colors.white,
                     child: IconButton(
                       onPressed: () {
                         
                       },
                       icon: FaIcon(FontAwesomeIcons.chevronRight, size: 20, color: Color(0xFFFFAB04),),
                     ),
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}