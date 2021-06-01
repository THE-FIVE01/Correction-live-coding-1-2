import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static  const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {

    final productTitle = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          productTitle
        ),
      ),
      body: Container(),
    );
  }
}