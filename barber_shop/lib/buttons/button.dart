import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonTitle;
  final Function onPress;

  Button({this.buttonTitle, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,//MediaQuery.of(context).size.width * 0.7,
      height: 70,//MediaQuery.of(context).size.height * 0.01,
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFFFEA051),fontSize: 30, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
      )
    );
  }
}
