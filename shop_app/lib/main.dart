import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:shop_app/models/product.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';
//import 'package:shop_app/screens/test.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato'
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/" : (ctx) => ProductsOverviewScreen(),
          ProductDetailScreen.routeName : (ctx) => ProductDetailScreen(),
          //Test.routeName : (_) => Test(),
        },
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//          ""
//         )
//       ),
//     );
//   }
// }
