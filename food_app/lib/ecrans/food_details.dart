import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/ecrans/food.dart';

class FoodDetails extends StatefulWidget {
  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCA30A),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          // padding: EdgeInsets.symmetric(vertical: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.chevronLeft),
                          iconSize: 20,
                          onPressed: () => Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Food())),
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 200,
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.heart),
                          iconSize: 20,
                          onPressed: () {},
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 700,
                color: Color(0xFFFCA30A),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  clipBehavior: Clip.none,
                  // clipBehavior: Clip.hardEdge,
                  children: [
                    Positioned(
                        child: Container(
                      height: 700,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                    )),
                    Positioned(
                      top: -100,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage("images/hamburger.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Positioned(
                        top: 120,
                        child: Text(
                          'Soba Soup With',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 150,
                        child: Text(
                          'Shrimp and Greens',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 190,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.star,
                                  color: Color(0xFFFFC533),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.fireAlt, // burn, fire
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '325 kcal',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        )),
                    Positioned(
                        top: 250,
                        left: 110,
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(50)),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                '12',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 250,
                        left: 180,
                        child: Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Color(0xFFFCA30A),
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: [
                              IconButton(
                                icon: FaIcon(
                                    FontAwesomeIcons.minus,
                                    size: 17,
                                  ), 
                                onPressed: () {}
                              ),
                              CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                                icon: FaIcon(
                                    FontAwesomeIcons.plus,
                                     size: 17,
                                  ), 
                                onPressed: () {}
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
