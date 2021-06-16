

import 'package:app/fournisseurs/docteur.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocteurItem extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final width  = MediaQuery.of(context).size.width;
    final height  = MediaQuery.of(context).size.height;
     
    final docteur = Provider.of<Docteur>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.white,
        height: height * 0.05,
         width: width * 0.42,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(docteur.imageUrl),
            ),
            
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 20),
              width: width * 0.3,
              child: Text(
                docteur.nom,
                style: TextStyle(
                  //color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.only(left: 10),
              width: width * 0.3,
              height: height * 0.07,
              child: Text(
                docteur.retournespecialite(docteur.specialite),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}