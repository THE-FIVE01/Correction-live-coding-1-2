import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page22 extends StatefulWidget {
  @override
  _Page22State createState() => _Page22State();
}

class _Page22State extends State<Page22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Matches",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          FaIcon(FontAwesomeIcons.bell)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "______________________________",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Today",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "______________________________",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StackImage(
                            image: AssetImage("images/man.jpg"),
                            name: "Ariel, 22",
                          ),
                          StackImage(
                            image: AssetImage("images/girl.jpg"),
                            name: "Madeline, 20",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StackImage(
                            image: AssetImage("images/entrepreneur.jpg"),
                            name: "Jean, 23",
                          ),
                          StackImage(
                            image: AssetImage("images/girl.jpg"),
                            name: "Kathy, 19",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "_________________________",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Yesterday",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "_________________________",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StackImage(
                            image: AssetImage("images/woman.jpg"),
                            name: "Jessie, 20",
                          ),
                          StackImage(
                            image: AssetImage("images/woman2.jpg"),
                            name: "Kathy, 25",
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}

class StackImage extends StatelessWidget {
  final AssetImage image;
  final String name;

  StackImage({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image: image, fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
