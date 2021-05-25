import 'package:flutter/material.dart';
import 'category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id,this.title, this.color);

  void selectCategory(BuildContext ctx) {
    // Navigator.of(ctx).push(MaterialPageRoute(
    //     builder: (_) { return CategoryMealsScreen(id, title);
    //     })
    // );
    Navigator.pushNamed(
      ctx, 
      CategoryMealsScreen.routeName, 
      arguments: {
      'id': id,
      'titre': title,
      'color' : color
    });
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: CategoryItemElement(color: color,title: title,),
    );
  }
}

class CategoryItemElement extends StatelessWidget {
  final Color color;
  final String title;

  const CategoryItemElement({Key key, this.color, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15.0),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15)
        ),
    );
  }
}

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     var categorie = ModalRoute.of(context).settings.arguments as Map;
//     print(categorie['id']);
//     print(categorie['titre']);
//     print(categorie['color']);

//     return Scaffold(
//       backgroundColor: Colors.orange,
//     );
//   }
// }