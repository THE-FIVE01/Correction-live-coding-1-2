import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail_screen.dart';
import '../providers/product.dart';
import '../providers/cart.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  // final double price;

  // ProductItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Container(
            child: GestureDetector(
          onTap: () => Navigator.pushNamed(
              context, ProductDetailScreen.routeName,
              arguments: product.id),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        )),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (ctx, product, _) => IconButton(
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                )),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () =>
              {
                cart.addItem(product.id, product.price, product.title, product.imageUrl),
                ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Ajout d'un élément dans le panier", textAlign: TextAlign.center,),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: "Annuler", 
                      textColor: Colors.white,
                      onPressed: () {
                        cart.removeSingleItem(product.id);
                      }
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  )
                )
              },
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
