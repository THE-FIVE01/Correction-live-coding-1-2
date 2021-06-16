

import 'package:flutter/foundation.dart';

class Client  with ChangeNotifier{

  @required final int id;
  @required final String imgClient;
  @required final String nomClient;
  @required final double valeurEtoile;
  @required final String avisClient;
  @required final DateTime date;
  final String bgColor;

  Client({this.id, this.imgClient, this.nomClient ,this.valeurEtoile, this.avisClient, this.bgColor, this.date});

  notifyListeners();
}