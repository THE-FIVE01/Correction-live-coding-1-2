import 'package:flutter/material.dart';
import 'package:foods/screens/food_cart.dart';
import 'package:provider/provider.dart';
import '../providers/food_provider.dart';

class FoodDetails extends StatelessWidget {
  static const routeName = 'food-details';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as int;
    final product = Provider.of<FoodProvider>(context).findbyId(productId);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Image(
          image: AssetImage('assets/images/dipndip-logo.png'),
          width: MediaQuery.of(context).size.width * 0.4,
          // height: MediaQuery.of(context).size.height * 0.02,
          //fit: BoxFit.cover,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            //padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.red),
            child: Container(
              color: Colors.white,
              child: Image(
                image: AssetImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      child: Text(
                        product.nom,
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              product.description,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              "${product.prix.toString()} cfa",
                              style: TextStyle(
                                  color: Color(0xFFEE2C23),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, FoodCart.routeName, arguments: product), 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange
                      ),
                      child: Text(
                        "Add to cart"
                      )
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
