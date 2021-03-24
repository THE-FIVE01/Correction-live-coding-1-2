void main(List<String> args) {

  // Création d'une map vide

  Map<int,String> fruits = {};
  
  // addAll() ajouter plusieurs éléments a la map
  // fruits.addAll({
  //   'fruits-jaune' : ['Banane','Bergamote','Citron','Limette','Mirabelle','Pomme'],
  //   'fruits-secs' : ['Amande','Cacahuète','Châtaigne','Datte','Noisette','NoixNoix','Tamarin']
  // });
  print("\n");
  print("1 : add.All() Ajouter plusieurs éléments dans la map de fruits ------------------------------");
  print("");
  fruits.addAll(
    {
      1 : 'Banane',
      2 : 'Bergamote',
      3 : 'Citron',
      4 : 'Limette',
      5 : 'Mirabelle',
      6 : 'Pomme',
      7 : 'Amande',
      8 : 'Cacahuète',
      9 : 'Châtaigne',
      10 : 'Datte',
      11 : 'Noisette',
      12 : 'NoixNoix',
      13 : 'Tamarin'
    }
  );
  print(fruits);
  print("taille fruits");
  print(fruits.length);
  print("_______ autre méthodes ajout d'élément dans la map de fruits _________");
  fruits[14] = 'Goyave';
  fruits[15] = 'Pamplemousse';
  print(fruits);
  print("________________________________________________________Fin");

  print("\n");
  print("2 : containsKeys() verifie si une clé existe et renvoi true ou false------------------------------");
  print("");
  var r = fruits;
  var resultat = r.containsKey(6);
  print(resultat);
  print("________________________________________________________Fin");

  print("\n");
  print("3 : forEach parcourir la map ------------------------------");
  print("");
  fruits.forEach((key, value) { 
    print("Clé : $key  -> $value");
  });
  print("________________________________________________________Fin");


  print("\n");
  print("4 : putifAbsent Ajoute un élément si il n'exite pas dans la map ------------------------------");
  print("");
  var k = fruits.length + 1;
  for (var key in {1,2,3,4,16}) {
    fruits.putIfAbsent(key, () => 'Mandarine');
  }
  
  print(fruits);
  
  print("________________________________________________________Fin");

  print("\n");
  print("5: remove() supprimer un élément dans la map à partir de sa clé------------------------------");
  print("");
  fruits.remove(1); // Supprimer 1: Banane de la map
  print(fruits);
  print("________________________________________________________Fin");

  print("\n");
  print("6: removeWhere() supprimer un élément dans la map à partir de sa clé ou sa valeur------------------------------");
  print("");
  fruits.removeWhere((key, value) => value == 'Bergamote'); // Supprimer 2: Bergamote de la map
  print(fruits);
  print("________________________________________________________Fin");

  print("\n");
  print("7: clear() supprimer tout les éléments de la map ------------------------------");
  print("");
  //fruits.clear(); // Supprimer 2: Bergamote de la map
  print(fruits);
  print("________________________________________________________Fin");

  print("\n");
  print("8: update() modifie un élément dans la map à partir de sa clé et sa valeur------------------------------");
  print("");
  fruits.update(3, (value) =>  value = 'Deet' ) ;// modifier 3: Citron dans la map -> nouvelle valeur 3: Deet 
  print(fruits);
  print("________________________________________________________Fin");

  print("\n");
  print("9: Map.from() Créer une nouvelle map a partir d'une autre map ------------------------------");
  print("");
  var newMapFruits = Map.from(fruits);
  print(newMapFruits);
  print("________________________________________________________Fin");
 
  













}