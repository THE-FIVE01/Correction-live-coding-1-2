import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {

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
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title, 
            imageUrl: categoryMeals[index].imageUrl, 
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
      
    );
  }
}