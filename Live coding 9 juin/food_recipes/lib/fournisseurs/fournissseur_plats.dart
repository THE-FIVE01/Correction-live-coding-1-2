import 'package:flutter/material.dart';
import 'package:food_recipes/fournisseurs/ingredient.dart';
import 'package:food_recipes/fournisseurs/pays.dart';
import 'plat.dart';


class FournisseurPlats with ChangeNotifier {

  List<Plat> _items = [
    Plat(
      id: 1,
      imagePlat: 'images/risotto-printanier-vegetarien.jpeg',
      nom: 'Risotto printanier végétarien',
      idPays: [1],
      etoile: 5.3,
      kcal: 200,
      duree: 30,
      prix: 2000,
      couleurFond: Color(0xFFfecc7e),
       ingredients: [
        Ingredients(id: 1, imageIngredient: 'https://cdn.pixabay.com/photo/2019/02/15/03/28/rice-3997767_1280.jpg', nomIngredient: 'riz arborio', valeurUnite: 150, unite: Unite.g),
        Ingredients(id: 2, imageIngredient: 'https://cdn.pixabay.com/photo/2014/05/28/00/27/olive-oil-356102_1280.jpg', nomIngredient: 'huile d\'olive', valeurUnite: 15, unite: Unite.ml),
        Ingredients(id: 3, imageIngredient: 'https://cdn.pixabay.com/photo/2015/03/14/14/00/carrots-673184_1280.jpg', nomIngredient: 'carottes', valeurUnite: 100, unite: Unite.g),
        Ingredients(id: 4, imageIngredient: 'https://cdn.pixabay.com/photo/2017/05/30/13/05/vegetables-2356884_1280.jpg', nomIngredient: 'courgettes zucchini', valeurUnite: 130, unite: Unite.g),
      ]
    ),
    Plat(
      id: 2,
      imagePlat: 'images/cannellonnis-a-la-ricotta.jpeg',
      nom: 'Cannellonnis à la ricotta',
      idPays: [1],
      etoile: 4.5,
      kcal: 300,
      duree: 105,
      prix: 5000,
      couleurFond: Color(0xFFe8ccd0),
     ingredients: [
        Ingredients(id: 1, imageIngredient: 'https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_1280.jpg', nomIngredient: 'Lait', valeurUnite: 75, unite: Unite.cl),
        Ingredients(id: 2, imageIngredient: 'https://cdn.pixabay.com/photo/2015/01/14/19/20/bake-599521_1280.jpg', nomIngredient: 'Beurre', valeurUnite: 50, unite: Unite.g),
        Ingredients(id: 3, imageIngredient: 'https://cdn.pixabay.com/photo/2016/11/21/15/42/beef-1846030_1280.jpg', nomIngredient: 'boeuf haché', valeurUnite: 400, unite: Unite.g),
        Ingredients(id: 4, imageIngredient: 'https://cdn.pixabay.com/photo/2020/05/22/21/47/garlic-5207282_1280.jpg', nomIngredient: 'gousses d\'ail', valeurUnite: 2),
      ]
    ),
    Plat(
      id: 3,
      imagePlat: 'images/pavlova-au-thermomix.jpeg',
      nom: 'Pavlova au Thermomix',
      idPays: [4],
      etoile: 7.0,
      kcal: 210,
      duree: 180,
      prix: 7000,
      couleurFond: Color(0xFFEC3F2E),
      ingredients: [
        Ingredients(id: 1, imageIngredient: 'https://cdn.pixabay.com/photo/2014/11/28/09/08/lump-sugar-548647_1280.jpg', nomIngredient: 'sucre', valeurUnite: 200, unite: Unite.g),
        Ingredients(id: 2, imageIngredient: 'https://cdn.pixabay.com/photo/2021/06/04/06/09/cherries-6308871_1280.jpg', nomIngredient: 'Fruits rouge', valeurUnite: 250, unite: Unite.g),
        Ingredients(id: 3, imageIngredient: 'https://cdn.pixabay.com/photo/2018/02/10/21/17/bake-3144588_1280.jpg', nomIngredient: 'sucre vanillé ', valeurUnite: 400, unite: Unite.g),
        Ingredients(id: 4, imageIngredient: 'https://cdn.pixabay.com/photo/2020/05/22/21/47/garlic-5207282_1280.jpg', nomIngredient: 'gousses d\'ail', valeurUnite: 2),
      ]
    ),
    Plat(
      id: 4,
      imagePlat: 'images/risotto-printanier-vegetarien.jpeg',
      nom: 'Risotto printanier végétarien',
      idPays: [1],
      etoile: 6.3,
      kcal: 200,
      duree: 30,
      prix: 2000,
      couleurFond: Color(0xFFCCEE7e),
      ingredients: [
        Ingredients(id: 1, imageIngredient: 'https://cdn.pixabay.com/photo/2019/02/15/03/28/rice-3997767_1280.jpg', nomIngredient: 'riz arborio', valeurUnite: 150, unite: Unite.g),
        Ingredients(id: 2, imageIngredient: 'https://cdn.pixabay.com/photo/2014/05/28/00/27/olive-oil-356102_1280.jpg', nomIngredient: 'huile d\'olive', valeurUnite: 15, unite: Unite.ml),
        Ingredients(id: 3, imageIngredient: 'https://cdn.pixabay.com/photo/2015/03/14/14/00/carrots-673184_1280.jpg', nomIngredient: 'carottes', valeurUnite: 100, unite: Unite.g),
        Ingredients(id: 4, imageIngredient: 'https://cdn.pixabay.com/photo/2017/05/30/13/05/vegetables-2356884_1280.jpg', nomIngredient: 'courgettes zucchini', valeurUnite: 130, unite: Unite.g),
      ]
    ),
    Plat(
      id: 5,
      imagePlat: 'images/cannellonnis-a-la-ricotta.jpeg',
      nom: 'Cannellonnis à la ricotta',
      idPays: [1],
      etoile: 3.5,
      kcal: 300,
      duree: 105,
      prix: 5000,
      couleurFond: Color(0xFFEEDDFF),
      ingredients: [
        Ingredients(id: 1, imageIngredient: 'https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_1280.jpg', nomIngredient: 'Lait', valeurUnite: 75, unite: Unite.cl),
        Ingredients(id: 2, imageIngredient: 'https://cdn.pixabay.com/photo/2015/01/14/19/20/bake-599521_1280.jpg', nomIngredient: 'Beurre', valeurUnite: 50, unite: Unite.g),
        Ingredients(id: 3, imageIngredient: 'https://cdn.pixabay.com/photo/2016/11/21/15/42/beef-1846030_1280.jpg', nomIngredient: 'boeuf haché', valeurUnite: 400, unite: Unite.g),
        Ingredients(id: 4, imageIngredient: 'https://cdn.pixabay.com/photo/2020/05/22/21/47/garlic-5207282_1280.jpg', nomIngredient: 'gousses d\'ail', valeurUnite: 2),
      ]
    ),
    Plat(
      id: 6,
      imagePlat: 'images/pavlova-au-thermomix.jpeg',
      nom: 'Pavlova au Thermomix',
      idPays: [4],
      etoile: 7.5,
      kcal: 210,
      duree: 180,
      prix: 7000,
      couleurFond: Color(0xFFDD6697),
       ingredients: [
        Ingredients(id: 1, imageIngredient: 'https://cdn.pixabay.com/photo/2014/11/28/09/08/lump-sugar-548647_1280.jpg', nomIngredient: 'sucre', valeurUnite: 200, unite: Unite.g),
        Ingredients(id: 2, imageIngredient: 'https://cdn.pixabay.com/photo/2021/06/04/06/09/cherries-6308871_1280.jpg', nomIngredient: 'Fruits rouge', valeurUnite: 250, unite: Unite.g),
        Ingredients(id: 3, imageIngredient: 'https://cdn.pixabay.com/photo/2018/02/10/21/17/bake-3144588_1280.jpg', nomIngredient: 'sucre vanillé ', valeurUnite: 400, unite: Unite.g),
        Ingredients(id: 4, imageIngredient: 'https://cdn.pixabay.com/photo/2020/05/22/21/47/garlic-5207282_1280.jpg', nomIngredient: 'gousses d\'ail', valeurUnite: 2),
      ]
    )
  ];

  List<Plat> get items {
    return [..._items];
  }


  // Liste de produits favoris
  List<Plat> get platFavoris {
    return _items.where((platItem) => platItem.estFavoris).toList();
  }
 



  // List<Plat> get platParPays {
  //   return _items.where((platPays) => platPays.idPays == );
  // }

  
  // //  Liste de produists par pays
  
  // List<Plat> get platParPays {
  //   return _items.where((platPays) => platPays.pays ==  pays).toList();
  // }


// rechercher un produit par id
  Plat rechercherParId(int id) {
    return items.firstWhere((plat) => plat.id == id);
  }
  
}