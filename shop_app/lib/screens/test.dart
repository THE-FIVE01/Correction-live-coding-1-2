import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class Test extends StatelessWidget {
  static const routeName = '/test';
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context).items;
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: SafeArea(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: product.length,
            itemBuilder: (ctx, ind) => ListTile(
              leading: Image.network(product[ind].imageUrl, fit: BoxFit.cover,),
              title: Text(
                product[ind].title
              ),
              
              
            ),
            
          ),
        ),
      ),
      
    );
  }
}