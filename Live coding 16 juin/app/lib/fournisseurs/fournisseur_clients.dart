import 'package:app/fournisseurs/client.dart';
import 'package:flutter/material.dart';

class FournisseurClient with ChangeNotifier {

  List<Client> _clients = [
    Client(
      id: 1, 
      imgClient: 'images/c1.jpg', 
      nomClient: "Jean percins",
      valeurEtoile: 4.0, 
      avisClient: "ulputate. Praesent laboris nesciunt nesciunt? Laudantium, explicabo vel porta? Pellentesque platea quas, vulputate mollis diam egestas? Doloremque cupidatat magna eum, hic mollitia potenti autem, metus.",
      bgColor: "0xFF",
      date: DateTime.now()
    ),
    Client(
      id: 2, 
      imgClient: 'images/c2.jpg', 
      nomClient: "Eric Peran",
      valeurEtoile: 7.0, 
      avisClient: "ulputate. Praesent laboris nesciunt nesciunt? Laudantium, explicabo vel porta? Pellentesque platea quas, vulputate mollis  cupidatat magna eum, hic mollitia potenti autem, metus.",
      bgColor: "0xFF",
      date: DateTime.now()
    ),
    Client(
      id: 3, 
      imgClient: 'images/c3.jpg', 
      nomClient: "Jareau hervre",
      valeurEtoile: 5.2, 
      avisClient: "ulputate. Praesent laboris nesciunt nesciunt? Laudantium, explicabo vel porta? Pellentesque platea quas, vulputate mollis  cupidatat magna eum, hic mollitia potenti autem, metus.",
      bgColor: "0xFF",
      date: DateTime.now()
    )
  ];

  List<Client> get clients => [..._clients];
  
}