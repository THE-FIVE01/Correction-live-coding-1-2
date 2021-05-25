import 'package:delimeal2/category_item.dart';
import 'package:flutter/material.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Delimeal"),centerTitle: true,),
      body: GridView(
        padding: const EdgeInsets.all(15.0),
      children: DUMMY_CATEGORIES.map((catData) { 
          return CategoryItem(
           catData.id,
           catData.title,
           catData.color
          );
        }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5, // pour largeur 200 je veux avoir une hauteur de 300 (200 * 1.5 = 300)
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
      ),
    
      )
    );
  }
}