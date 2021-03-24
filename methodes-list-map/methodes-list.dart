
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

  // 3 - mettre lés élement du de la liste en ordre - sort();
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

  // inserer plusieurs éléments dans la liste de fruits à partir d'une position(index) - insertAll();
  print("____ insertAll() _____");
  fruits.insertAll(6, ['Ananas','Anone','Aronia','Avocat','Banane','Bergamote','element','Bigaradier','Bleuet','Abricot','Cacahuète','Caïmite','Calamondin','Camerise','Canneberge','Carambole','Cassis','CédratCerise']);
  print(fruits);
  print("__________________");

  // 8 - remove - removeAt - supprimer 1 élément à partir de son nom / à partir de sa clé
  print("____ remove() & removeAt() _____");
  fruits.remove('Cassis'); // retirer Cassis de la liste
  fruits.removeAt(2); // retirer Açaï de la liste
  print(fruits);
  print("__________________");


  // 9 -  map() Parcour les élément de la liste et permet de faire des opérations ou actions sur ces éléments
  //var elementfruits = fruits;
  print("____ map() _____");
  var r = fruits.map((e) => e + '_1' ).toList();
  print(r);
  print("__________________");

  // 10 - where() Parcour les élément de la liste et permet de retourner les éléments de la liste qui respecte la condition  items == 'element'
  print("____ where() _____");
  var w = fruits.where((items) => items == 'element').toList();
  print(w);
  print("__________________");

  // 11 - firstwhere() sur la liste de fruits r = fruits de la methode n 10 - retourne le premier élément qui respecte la condition items1 == 'Abricot_1'
  print("________ firstwhere() __________");
  var fw = r.firstWhere((items1) => items1 == 'Abricot_1', orElse: () {
            return null;
  });
  print(fw);

  print("__________________");
  
  // 12 - list.from() - créer une list à partir d'une autre r = fruits;
  var newlist = List.from(r);
  print(newlist);
  print("__________________");

  
  

  







}