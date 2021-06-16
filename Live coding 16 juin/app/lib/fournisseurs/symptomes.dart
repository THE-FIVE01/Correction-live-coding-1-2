
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Symptomes with ChangeNotifier {
  @required final int id;
  @required final IconData emoticon;
  @required final String title;

  Symptomes({this.id, this.emoticon, this.title});
   notifyListeners();
}

