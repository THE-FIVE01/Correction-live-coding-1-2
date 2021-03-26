

import 'dart:math';

class CalculatorBrain {
  
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  // ignore: missing_return
  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if(_bmi >= 18) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  // ignore: missing_return
  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a heigher than normal body weight. Try to exercice more.";
    } else if(_bmi >= 18) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }

}