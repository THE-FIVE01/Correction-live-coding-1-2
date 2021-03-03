

void main(List<String> args) {

  String email = 'tialaonahousse@gmail.com';
 

  print("\n");
  print("1 : contains() verifier si l'email contient un élément donné------------------------------");
  print("");
  var symb = '@';
  var resultat = email.contains(symb);
  print(resultat);
  if (resultat) {
    print("$email contient '$symb'");
  } else {
    print("$email ne contient pas '$symb'");
  }
  
  print("________________________________________________________Fin");

  print("\n");
  print("2 : startWith() verifier si l'email commence par un élément donné ------------------------------");
  print("");
  var chaine ='tia';
  var commencerpar = email.startsWith(chaine);
  print(commencerpar);
  if (commencerpar) {
    print("$email commence par '$chaine'");
  } else {
    print("$email ne commence pas par '$chaine'");
  }
  
  print("________________________________________________________Fin");

  print("\n");
  print("3 : endsWith() verifier si l'email se termine par un élément donné ------------------------------");
  print("");
  var chaine1 ='.com';
  var terminerpar = email.endsWith(chaine1);
  print(terminerpar);
  if (terminerpar) {
    print("$email se termine par '$chaine1'");
  } else {
    print("$email ne se termine pas par '$chaine1'");
  }
  print("________________________________________________________Fin");

  print("________________________________________________________Fin");

  print("\n");
  print("4 : toLowerCase() & toUpperCase() miniscule et majiscule ------------------------------");
  print("");
  print("$email en miniscule");
  var min = email.toLowerCase();
  print(min);
  print("..............");
  print("$email en majiscule");
  var maj = email.toUpperCase();
  print(maj);
  print("________________________________________________________Fin");

  print("\n");
  print("5 : split() Couper des éléments dans une chaine ------------------------------");
  print("");
  print("Email avec '.com' à la fin ");
  print(email);
  print("Ont coupe le '.com' et ont le remplace ");
  print("..............");
  var couper = email.split('.com'); // on coupe le .com pour le remplacer ensuite par le .fr
  print("Email avec le '.com' remplacer par le '.fr ");
  var newEmail = email + '.fr';
  print(newEmail);
  print("________________________________________________________Fin");

  print("\n");
  print("6 : trim() retrancher les espaces dans une chaine ------------------------------");
  print("");
  var phrase = "Bonjour je m'appele tialao et je suis développeur Flutter";
  print(phrase);
  print("nouvelle phrase sans les espaces");
  var newphrase = phrase.trim();
  var x = identical(phrase,newphrase);
  print(x);
  print("________________________________________________________Fin");

  print("\n");
  print("7 : replaceAll() remplacer un élément donné dans une chaine ------------------------------");
  print("");
  String r = phrase;
  var car = 'et';
  r.replaceAll(car, '&');
  print(r);
  
  print("________________________________________________________Fin");

  print("\n");
  print("8 : indexOf() retrouver l'index d'un élément donné dans une chaine à partir du début ------------------------------");
  print("");
  String y = email;
  var symbole = '@';
  y.indexOf(symbole,3);
  print(y);
  
  print("________________________________________________________Fin");

  print("\n");
  print("9 : lastIndexOf() retrouver l'index d'un élément donné dans une chaine à partir de la fin de chaine ------------------------------");
  print("");
  String z = email;
  var symbo = '@';
  z.lastIndexOf(symbo,3);
  print(z);
  
  print("________________________________________________________Fin");


}