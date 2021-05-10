// import 'package:delimeal/categories_screen.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreens extends StatelessWidget {
  static const routename = '/catergory-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreens(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          "The Recipes For The Category "
        ),
      ),
    );
  }
}