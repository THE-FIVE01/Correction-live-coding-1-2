import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;
  final double price;

  ProductItem(this.id, this.title, this.imageUrl, this.price);
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Container(
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, ProductDetailScreen.routeName,arguments: title),
            child: Image.network(
              imageUrl, fit: 
              BoxFit.cover,
            ),
          )
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).accentColor,
            )
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}