import 'package:flutter/material.dart';

class NewText extends Text {

  NewText(String data, {color: Colors.white, textAlign: TextAlign.center, factor: 1.0, fontWeight: FontWeight.normal}) : 
  super(
    data, 
    textAlign: textAlign,
    textScaleFactor: factor,
    style: TextStyle(color:  color, fontWeight: fontWeight),
  ); 
}