import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
// import '../models/product.dart';
import '../widgets/product_item.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';
// import '../screens/test.dart';

class ProductsOverviewScreen extends StatelessWidget {

  static const routeName = 'products-overview';
  
  @override
  Widget build(BuildContext context) {

    final products = Provider.of<Products>(context).items;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "test",
        ),
      ),
      body: GridView.builder(
        
        padding: EdgeInsets.all(10),
        itemCount: products.length, 
        itemBuilder: (ctx, i) => InkWell(
          onTap: () => Navigator.pushNamed(context, ProductDetailScreen.routeName),
          child: ProductItem(
            products[i].id,
            products[i].title,
            products[i].imageUrl,
             products[i].price,
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ), 
      ),
    );
  }
}