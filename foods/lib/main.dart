import 'package:flutter/material.dart';
import 'package:foods/screens/food_cart.dart';
import 'package:foods/screens/food_details.dart';
import 'package:provider/provider.dart';
import './providers/food_provider.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
          create: (_) => FoodProvider(),
        )
      ], 
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        debugShowCheckedModeBanner: false,
        //home: Home(),
        initialRoute: '/',
        routes: {
          '/' : (ctx) => Home(),
          FoodDetails.routeName : (ctx) => FoodDetails(),
          FoodCart.routeName : (ctx) => FoodCart(),
        },
      ),
    );
    
  }
}

