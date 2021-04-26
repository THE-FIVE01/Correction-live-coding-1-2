import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  
  final String buttonTitle;
  final Function onPress;

  Button({this.buttonTitle, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.1  ,
      child: ElevatedButton(
        onPressed: onPress, 
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      
    );
  }
}