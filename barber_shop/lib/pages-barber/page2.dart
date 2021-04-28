import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:barber_shop/pages-barber/page1.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _index = 0;
  Color color = Colors.deepOrange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepOrange,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (currentIndex){
          print(currentIndex);
          setState(() {
            _index = currentIndex; 
            
          });
        },
        currentIndex: _index,
        items:[
          
          BottomNavigationBarItem(
            label: "-",
            icon: FaIcon(FontAwesomeIcons.home, color: Colors.deepOrange,),

          ),
          BottomNavigationBarItem(
            label: "",
            icon: FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Colors.grey,),
          ),
           BottomNavigationBarItem(
            label: "",
            icon: FaIcon(FontAwesomeIcons.commentDots, color: Colors.grey,),
          ),
             BottomNavigationBarItem(
            label: "",
            icon: FaIcon(FontAwesomeIcons.heart, color: Colors.grey,),
          ),
        
        ] 
      ) ,
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
                    //---Début code Rox avec image - textes et icone alarme -------------------------------------------------------------------
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
                    //---Fin code Rox avec image - textes et icone alarme -------------------------------------------------------------------
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
                    //--Début code Icon plus texte-------------------------------------------------------------
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

                    //--Fin Code Icon plus texte---------------------------------------------------------------
                    SizedBox(
                      height: 50,
                    ),
                    //--Stack orange avec image plus texte --------------------------------------------------------------------
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height:180, //MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                              color: Color(0xFFFEA051),
                              borderRadius: BorderRadius.circular(20)),
                          //clipBehavior: Clip.none,
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
                                image: AssetImage(
                                    "images/pexels-justin-shaifer.jpg"),
                                fit: BoxFit.contain,
                                // scale: 4,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          right: 0,
                          left: 0,
                            child: Column(
                              children: [
                                Text(
                                  "Get Free Beard Growth",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                  Text(
                                    "Essential Liquid",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 22),
                              Text(
                                "Clain int until Feb 20, in all barbershop",
                                style: TextStyle(
                                  color: Colors.white,
                                  //fontSize: 15,
                                ),
                              ),
                              ],
                            ),
                          ),
                      ],
                    )
                    //--Fin code Stack orange avec image plus texte --------------------------------------------------------------------
                  , SizedBox(
                      height: 30,
                    ),
                    //---Début code Row avec deux textes - noir et orange---------------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Nearby",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Show all",
                            style: TextStyle(
                              color: Color(0xFFFEA051),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                   
                    //---Fin code Row avec deux textes - noir et orange---------------------------------------------------------------------
                     SizedBox(
                      height: 30,
                    ),
                    //---Début code Image avec plusieurs textes a droite---------------------------------------------------------------------
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page1())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                           borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 125,
                              height: 140,
                              child: Image(
                                image: AssetImage("images/pexels-midia.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Barberking",
                                style: TextStyle(
                                  fontSize: 25, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                
                                children: [
                                  Text(
                                    "OPEN NOW",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15, 
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  FaIcon(
                                    FontAwesomeIcons.clock,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "09AM - 10PM",
                                    style: TextStyle(
                                       color: Colors.grey,
                                      fontSize: 15, 
                                      
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                  ),
                                  SizedBox(width: 10,),
                                  FaIcon(
                                    FontAwesomeIcons.mapMarkerAlt,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "1,5km away",
                                    style: TextStyle(
                                       color: Colors.grey[700],
                                      fontSize: 15, 
                                      
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                    //---Fin code Image avec plusieurs textes a droite---------------------------------------------------------------------
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
