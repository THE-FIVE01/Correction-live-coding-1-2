import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipes/ecrans/ecran_details_plat.dart';
import 'package:food_recipes/fournisseurs/plat.dart';
import 'package:provider/provider.dart';

class PlatItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final plats = Provider.of<Plat>(context, listen: false);


    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      
      onTap: () {
        Navigator.pushNamed(context, EcranDetailsPlats.routeName, arguments: plats.id);
      },
      child: Container(
        width: width * 0.50,
        height: height * 0.6,
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.only(bottom: 40, left: 10),//(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
           color: plats.couleurFond,
        ),
        //alignment: Alignment.center,
       
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
            alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image(
                  width: width * 0.25,
                  image: AssetImage(plats.imagePlat),
                  fit: BoxFit.cover,
                ),
              )
            ),
            SizedBox(height: height * 0.03,),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: width * 0.37,
                margin: EdgeInsets.only(top: height * 0.09, bottom: 10),
                child: Text(
                  plats.nom,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                ),
              )
            ),
            
            Align(
             alignment: Alignment.bottomLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: width * 0.2,
                  height: height * 0.04,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.star, color: Colors.yellow[700], size: 15,),
                      Text(
                        "${plats.like}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}