import 'package:flutter/material.dart';
import 'package:foods/models/food_model.dart';
import '../providers/food_provider.dart';

class FoodCart extends StatelessWidget {
 
  static const routeName = 'food-cart';

  @override
  Widget build(BuildContext context) {

    final foodInfos = ModalRoute.of(context).settings.arguments as Food;

    List<Food> foo = [
      foodInfos,
    ];
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Cart"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 30,
                    child: Image(
                      image: AssetImage(foodInfos.imageUrl),
                    )
                  )
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(child: Text(foodInfos.nom, style: TextStyle(fontWeight: FontWeight.bold),)),
                      Container(width: 300,child: Text(foodInfos.description, maxLines: 1,)),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text("${foodInfos.prix.toString()} cfa", 
                      style: TextStyle(color:  Color(0xFFEE2C23),fontWeight: FontWeight.bold),
                    )
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}