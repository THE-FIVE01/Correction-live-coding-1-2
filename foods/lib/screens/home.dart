import 'package:flutter/material.dart';
import 'package:foods/providers/food_provider.dart';
import 'package:foods/screens/food_details.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final products = Provider.of<FoodProvider>(context).items;
    // final productData = products;
    
    return Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              // color: Colors.deepOrange,
              image: DecorationImage(
                image: AssetImage('assets/images/intro-image.webp'),
                fit: BoxFit.cover
              )
            ),
            child: Image(
              image: AssetImage('assets/images/dipndip-logo.png'),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 15),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: products.length,
              separatorBuilder: (context, ind) => Divider(color: Colors.deepOrange,height: 10,), 
              itemBuilder: (ctx, index) => ListTile(
                onTap: () => Navigator.pushNamed(context, FoodDetails.routeName, arguments: products[index].id),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(products[index].imageUrl),
                  
                ),
                title: Text(
                  products[index].nom
                ),
                subtitle: Text(
                  products[index].description,
                  maxLines: 3,
                ),
                trailing: Text(
                  "${products[index].prix.toString()} cfa",
                  style: TextStyle(color: Color(0xFFEE2C23), fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ), 
              
              
            ),
          )
         
        ],
      ),
    );
  }
}