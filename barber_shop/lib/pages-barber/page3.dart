import 'package:barber_shop/pages-barber/page2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    
                    children: [
                    
                    SizedBox(
                      height: 50,
                    ),
                     
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Image(
                          image: AssetImage("images/pexels-midia.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),


                    //-------------------------------------------
                    SizedBox(
                      height: 50,
                    ),
                   
                    //------------------------------------------------------------------

                    Text(
                        "Find your friends",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                     SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Find your all friends in one place \n by syning your contact list.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 1.5
                        ),
                      ),
                    ),

                    //---------------------------------------------------------------------------------------
                     SizedBox(
                      height: 90,
                    ),
                    //------------------------------------------------- Début - Code Images superposées avec stack -------------------------------------------------------------------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.9,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          //color: Colors.red,
                          child: Stack(
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
                                    image: DecorationImage(
                                      image: AssetImage("images/pexels-nitin.jpg"),
                                      fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 220,
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
                                    image: DecorationImage(
                                      image: AssetImage("images/pexels-italo.jpg"),
                                      fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                              ),
                            
                            ],
                          ),
                        ),
                      ],
                    ),
                      SizedBox(
                      height: 20,
                      ),
                    //------------------------------------------------- Fin - Code Images superposées avec stack -------------------------------------------------------------------------
                     RichText(
                      text: TextSpan(
                        text: 'More than ',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text: '1M people', 
                            style: TextStyle(color:  Color(0xFFFEA051),fontWeight: FontWeight.bold)
                          ),
                          TextSpan(
                            text: ' using us',
                          ),
                        ],
                      ),
                    ),

                      SizedBox(
                      height: 100,
                      ),
                      
                    //------------------------------------------------- Début - Code Boutton Book now de couleur orangé -------------------------------------------------------------------------
                      Container(
                        width: 350,//MediaQuery.of(context).size.width * 0.8,
                        height: 75,//MediaQuery.of(context).size.height * 0.07,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page2())), 
                          child: Text(
                            "Sync Contact",
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
                      ),

                      SizedBox(
                      height: 40,
                      ),

                       TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip for now",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
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