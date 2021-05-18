import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
              //-------------------------------------------------Début - Code Image du haut ---------------------------------------
              Container(
                width: MediaQuery.of(context).size.width, //* 1.5,
                height: 270,//MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/pexels-midia.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              //-------------------------------------------------Fin - Code Image du haut ---------------------------------------
              SizedBox(
                height: 20,
              ),

              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    //-------------------------------------------------Début - Code Textes du centre avec le coeur - suivie des étoiles ---------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Albert barber shop",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2972 Westheimer Rd. Illinois",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFED052),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFED052),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFED052),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFED052),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFC2C2C2),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                    color: Color(0xFFFED052),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "218 Reviews",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFFC4150),
                            radius: 25,
                            child: FaIcon(FontAwesomeIcons.heart),
                          ),
                        )
                      ],
                    ),
                    //------------------------------------------------- Fin - Code Textes du centre avec le coeur - suivie des étoiles ---------------------------------------
                    //
                    //
                    SizedBox(
                      height: 20,
                    ),
                    //-------------------------------------------------Début - Code Textes en Bleu avec background blue suivi du texte situé au centre de l'aplication ---------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Text(
                                "Men's haircut",
                                style: TextStyle(color: Colors.blue),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Text(
                                "Hair styling",
                                style: TextStyle(color: Colors.blue),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Text(
                                "Coloring",
                                style: TextStyle(color: Colors.blue),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Text(
                              "Shaving",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Sagittis officia nibh voluptatibus class, ullamco nostra sem sint. Repellat nam, facilisi? Nostra quo nisl voluptatibus earum deserunt fringilla minima.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          height: 2
                        ),
                      ),
                    ),

                    //------------------------------------------------- Fin - Code Textes en Bleu avec background blue  suivi du texte situé au centre de l'aplication---------------------------------------
                    SizedBox(
                      height: 50,
                    ),
                    //------------------------------------------------- Début - Code Images superposées avec stack -------------------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 60,
                                height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage("images/pexels-pixabay3.jpg"),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                            Positioned(
                              left: 55,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage("images/pexels-italo-melo5.jpg"),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 110,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2
                                  )
                                ],
                                  image: DecorationImage(
                                    image: AssetImage("images/pexels-justin-shaifer.jpg"),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 165,
                              child: Container(
                                width: 60,
                                height: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFE3CC),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2
                                    )
                                  ],
                                ),
                                child: Text(
                                  "+3",
                                  style: TextStyle(
                                    color: Color(0xFFFEA051),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ),
                            ),
                          
                          ],
                        ),
                      ],
                    ),
                    //------------------------------------------------- Fin - Code Images superposées avec stack -------------------------------------------------------------------------
                      SizedBox(
                      height: 50,
                      ),
                    //------------------------------------------------- Début - Code Boutton Book now de couleur orangé -------------------------------------------------------------------------
                      Container(
                        width: 350,//MediaQuery.of(context).size.width * 0.8,
                        height: 70,//MediaQuery.of(context).size.height * 0.07,
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: Text(
                            "Book now",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFEA051),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                        )
                      )
                    ////------------------------------------------------- Fin - Code Boutton Book now de couleur orangé -------------------------------------------------------------------------
                    ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}