import 'package:flutter/material.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/screens/auth_screen.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/screens/formulaire_inscritption.dart';
import 'package:shop_app/screens/user_products_screen.dart';
import './providers/cart.dart';
import 'package:shop_app/providers/products.dart';
import '../screens/products_overview_screen.dart';
import 'package:provider/provider.dart';
import 'screens/product_detail_screen.dart';
import 'screens/orders_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
          //value: Products(),
        ),
        ChangeNotifierProvider(
          //value: Cart(),
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          //value: Cart(),
          create: (ctx) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (ctx) => AuthScreen(),
          //"/": (ctx) => FormulaireScreen(),
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
          //Test.routeName : (_) => Test(),
        },
      ),
    );
  }
}
