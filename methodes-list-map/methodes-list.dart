
void main(List<String> args) {
  
  //  List fruits = ['Abricot','Açaï','Airelle','Alkékenge','Amande','Ananas','Anone','Aronia','Avocat','Banane','Bergamote','Bibasse','Bigaradier','Bleuet','Brugnon','Cacahuète','Caïmite','Calamondin','Camerise','Canneberge','Carambole','Cassis','CédratCerise'];
  // Création d'une liste de fruits vide
  List fruits = [];

  // 1 - Ajouter un élément dans la liste de fruits - add();
  fruits.add('Abricot');
  print(fruits);
  print("__________________");

  // 2 - Ajouter plusieurs éléments dans la liste de fruits - addAll();
  fruits.addAll(['Açaï','Airelle','Alkékenge','Amande']);
  print(fruits);
  print("__________________");

  // 3 - mettre lés élemnt du de la liste en ordre - sort();
  //fruits.sort();
  print(fruits);
  print("__________________");

  // 4 - Vérifier si une liste est vide - isEmpty()  retoune true oou false;
  var verifFruitsVide = fruits.isEmpty;
  print(verifFruitsVide);
  print("__________________");

  // 5 - vérifier si la liste de fruits contient un élément donné - contains();
  String element = 'Avocat';
  var verifElementDansFRuits = fruits.contains(element);
  print(verifElementDansFRuits);
  if(verifElementDansFRuits) {
    print("$element est dans la liste de fruits");
    print("__________________");
  }else {
    print("$element n'est pas dans la liste de fruits");
  }
  
  // 6 - Trouver l'index d'un élément donné dans une liste - indexOf();
  String element2 = 'Abricot';
  var index = fruits.indexOf(element2);
  print(index);
  print("$element2 est situé à l'index $index dans la liste de fruits");
  print("__________________");

  // 7 - Parcourir tout les éléments d'une liste - forEach();
  fruits.forEach((element) { print(element);});

  // 8 - inserer un element dans la liste à partir d'une position(index) avec - insert();
  //var t = fruits.length;
  print("____ insert() _____");
  //print("Inserer un element a la position : ");
  //print("position $t");
  fruits.insert(0, 'element');
  print(fruits);
  print("__________________");

  // 9 - inserer plusieurs éléments dans la liste de fruits à partir d'une position(index) - insertAll();
  print("____ insertAll() _____");
  fruits.insertAll(6, ['Ananas','Anone','Aronia','Avocat','Banane','Bergamote','Bibasse','Bigaradier','Bleuet','Brugnon','Cacahuète','Caïmite','Calamondin','Camerise','Canneberge','Carambole','Cassis','CédratCerise']);
  print(fruits);
  print("__________________");

  // 10 - Retourne un nouvel Itérable avec des éléments qui sont créés en appelant f sur chaque élément de cet Itérable dans l'ordre d'itération.
  //var elementfruits = fruits;
  print("____ map() _____");
  var r = fruits.map((e) => e + '_1' ).toList();
  if (r != ' ') {
    print(r);
  } else {
    print('erreur');
  }
  print("__________________");

  // 11 - where()
  print("____ where() _____");
  var w = fruits.where((items) => items).toList();
  if (w == 'Amande' || w == 'Ananas') {
    print(w);
  }
  print("__________________");

  // 12 - firstwhere()
  print("________ firstwhere() __________");
  var fw = fruits.firstWhere((items1) => items1);
  print(fw);

  print("__________________");
  
  // 13 - list.from()

  







}