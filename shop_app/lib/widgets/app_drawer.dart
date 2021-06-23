import 'package:flutter/material.dart';
import '../screens/user_products_screen.dart';
import '../screens/orders_screens.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Menu - principale'),
            automaticallyImplyLeading: false, // pas de bouton de retour
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Achats'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Commandes'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
           ListTile(
            leading: Icon(Icons.edit),
            title: Text('Gérer le produits'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
