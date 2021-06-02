import 'package:flutter/material.dart';
import '../models/food_model.dart';

class FoodProvider with ChangeNotifier {

  List<Food> _item = [
    Food(
      id: 1, 
      nom: "mighty crepe", 
      prix: 5000,  
      imageUrl: "assets/images/mighty-crepee.jpeg",
      description: "crepe, filled with brownies, cream puffs, cream cheese and strawberries, served with all three of our signature chocolate flavors on top and sprinkled with c...", 
      ),
    Food(
    id: 2, 
    nom: "Alaskan waffle", 
    prix: 4500,  
    imageUrl: "assets/images/alscan.png",
    description: "waffle, topped with chocolate caramel cream, toasted meringue, hazelnut chocolate chunks, served with your choice of ice cream and chocolate", 
    ),
    Food(
    id: 3, 
    nom: "cream puff pyramid", 
    prix: 5500,  
    imageUrl: "assets/images/cream-puff-pyramid.jpeg",
    description: "cream puffs, served with your choice of chocolate topping", 
    ),
    Food(
      id: 4, 
      nom: "fettuccine crepe", 
      prix: 3000,  
      imageUrl: "assets/images/fettuccine-crepe.jpeg",
      description: "crepe, cut into fine ribbons, served with your choice of ice cream and chocolate topping", 
      ),
      Food(
      id: 5, 
      nom: "crunchy chocolate pancakes", 
      prix: 13000,  
      imageUrl: "assets/images/crunchy-chocolate-pancakes.png",
      description: "a stack of pancakes, with all three of our signature chocolate flavours, vanilla and chocolate biscuit crunch. Topped off with a strawberry. ", 
      ),
      Food(
      id: 6, 
      nom: "crunchy Oreo waffle", 
      prix: 48000,  
      imageUrl: "assets/images/crunchy-oreo-waffle.png",
      description: "waffle topped with milk and white chocolate, and Oreo crumbs. Served with your choice of ice cream.", 
      ),
      Food(
      id: 7, 
      nom: "mighty Oreo crepe", 
      prix: 54000,  
      imageUrl: "assets/images/crunchy-oreo-crepe.png",
      description: "crepe filled with bananas, brownies, candied pistachios, salted caramel and vanilla ice cream. Topped with milk and white chocolate, and Oreo crumbs.", 
      ),
      Food(
      id: 8, 
      nom: "mighty speculoos crepe", 
      prix: 3000,  
      imageUrl: "assets/images/crunchy-speculoos-crepe.png",
      description: "crepe filled with strawberries, brownies, chocolate caramel cream; and speculoos ganache, crumbs and spread. Topped with milk and white chocolate, and speculoos c...", 
      ),
  ];
  
  List<Food> get items => [..._item];

  Food findbyId(int id) {
    return _item.firstWhere((food) => food.id == id);
  }


}