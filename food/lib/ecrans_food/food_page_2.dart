import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodPage2 extends StatefulWidget {
  @override
  _FoodPage2State createState() => _FoodPage2State();
}

class _FoodPage2State extends State<FoodPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFbf1e),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons
                          .arrow_back_ios_outlined), //FaIcon(FontAwesomeIcons.chevronLeft),
                      iconSize: 20,
                      onPressed: () {},
                      color: Colors.black,
                    )
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      iconSize: 20,
                      onPressed: () {},
                      color: Colors.black,
                    )
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  
                  children: [
                    Container(
                      alignment: AlignmentDirectional(0, 0),
                      //width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.5,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0),
                          )),
                      child: Column(
                        children: [
                          Text(
                            "Soba soup with",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("images/hamburger.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(160.0)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
