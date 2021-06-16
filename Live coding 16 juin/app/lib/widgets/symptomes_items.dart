import 'package:app/fournisseurs/fournisseur_symptomes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SymptomesItems extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final symptomesData = Provider.of<FournisseurSymptomes>(context).symptomes;

    final width  = MediaQuery.of(context).size.width;
    final height  = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.07,
      width: double.infinity,
      //color: Colors.grey[400],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: symptomesData.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.05,
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    FaIcon(
                      symptomesData[index].emoticon, 
                      size: 20, color: 
                      Color(0xFFFFD039),
                    ),
                    SizedBox(width: width * 0.02,),
                    Text(
                       symptomesData[index].title,
                       style: TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                    ),
                    SizedBox(width: width * 0.07,),
                  ],
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}