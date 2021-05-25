import 'package:delimeal2/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);
  // final Color color;

  // const CategoryMealsScreen({Key key, this.color}) : super(key: key);
  static const routeName = "/categorie-meals-screen";

  @override
  Widget build(BuildContext context) {

    final meals = ModalRoute.of(context).settings.arguments as Map;
    final id = meals['id'];
    final title = meals['titre'];
    final color = meals['color'];
    

    var categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    


    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(title),
      ),
      body: ListView.builder(
        
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
      
    );
  }
}