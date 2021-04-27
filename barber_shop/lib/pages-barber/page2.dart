import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepOrange,
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                //top: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    //------------------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(color: Colors.white, spreadRadius: 2)
                                // ],
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/pexels-pixabay3.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Zlatan Lukalu",
                                  style: TextStyle(
                                      //color: Colors.grey,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 40,
                            child: FaIcon(
                              FontAwesomeIcons.bell,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Input code-----------------------------------------------------
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search barber",
                          hintStyle: TextStyle(fontSize: 20),
                          icon: FaIcon(
                            FontAwesomeIcons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //------------------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 50,
                                child: FaIcon(
                                  FontAwesomeIcons.cut,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Hair Cut",
                              style: TextStyle(
                                  //color: Colors.grey,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 50,
                                child: FaIcon(
                                  FontAwesomeIcons.cuttlefish,
                                  color: Colors.deepOrangeAccent,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Shaving",
                              style: TextStyle(
                                  //color: Colors.grey,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 50,
                                child: FaIcon(
                                  FontAwesomeIcons.palette,
                                  color: Colors.yellow[700],
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Coloring",
                              style: TextStyle(
                                  //color: Colors.grey,
                                  fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),

                    //------------------------------------------------------------------------
                    SizedBox(
                      height: 50,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height:
                                180, //MediaQuery.of(context).size.height * 0.20,
                            decoration: BoxDecoration(
                                color: Color(0xFFFEA051),
                                borderRadius: BorderRadius.circular(20)),

                            clipBehavior: Clip.none,
                          ),
                        ),
                        Positioned(
                          top: -15,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Colors.white, spreadRadius: 5)
                              ],
                              image: DecorationImage(
                                image: AssetImage("images/man.jpg"),
                                fit: BoxFit.cover,
                                // scale: 4,
                              ),
                            ),
                          ),
                        ),
                        
                         Positioned(
                          top: 50,
                          left: 50,
                          right: 0,
                          child: Container(
                            // width: 60,
                            // height: 60,
                           child: Text(
                            "Get Free Beard Growth",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                         Positioned(
                          top: 80,
                          left: 50,
                          right: 0,
                          child: Container(
                            // width: 60,
                            // height: 60,
                           child: Text(
                            "Essential Liquid",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                        
                       
                      ],
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
