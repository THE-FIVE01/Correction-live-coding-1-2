import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    if (orientation == Orientation.portrait) {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: FaIcon(FontAwesomeIcons.arrowLeft, size: 25, color: Colors.black,),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: FaIcon(FontAwesomeIcons.ellipsisH, size: 25, color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/beard.jpg"),
                    ),
                  ),
                  SizedBox(height: height * 0.02,),
                  Text(
                    "Edgard Schultz",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 15, color: Colors.grey),
                      SizedBox(width: width * 0.02,),
                      Text(
                        "New York",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: height * 0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: width * 0.06,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.plus, size: 13, color: Colors.grey),
                      SizedBox(width: width * 0.01,),
                      Text(
                        "Add New",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: height * 0.02,),
              Center(
                child: Container(
                  width: width * 0.9,
                  height: height * 0.25,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF191d21),
                        spreadRadius: 0.6,
                        blurRadius: 0.7,
                        
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF191d21),
                          Color(0xFF242E3A)
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.6),
                              shape: BoxShape.circle
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.02,),
                      Text(
                        "Edgard Schultz",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.6)
                        ),
                      ),
                      Row(
                        children: [
                           Text(
                            "....",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: width * 0.02,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "367",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: FaIcon(FontAwesomeIcons.comments, color: Colors.white.withOpacity(0.8), size: 20,),
                          ),
                          SizedBox(width: width * 0.14,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "\$2,912,56",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.06,),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: height * 0.02,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "10 April, 6:39 am",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      "Tesla model 3 - 10m 30s",
                      style: TextStyle(
                       color: Colors.grey
                      ),
                    ),
                    trailing: Text(
                      "\$103,24",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "8 April",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7)
                      ),
                    ),
                    subtitle: Text(
                      "Tesla model 5 - 15m",
                      style: TextStyle(
                       color: Colors.grey
                      ),
                    ),
                    trailing: Text(
                      "\$90,05",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 17
                      ),
                    ),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "6 April",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                    subtitle: Text(
                      "Tesla model 3 - 10m 30s",
                      style: TextStyle(
                       color: Colors.grey.withOpacity(0.4)
                      ),
                    ),
                    trailing: Text(
                      "\$150,64",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.8),
                        fontSize: 17
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
      
    } else {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: FaIcon(FontAwesomeIcons.arrowLeft, size: 25, color: Colors.black,),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: FaIcon(FontAwesomeIcons.ellipsisH, size: 25, color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/beard.jpg"),
                    ),
                  ),
                  SizedBox(height: height * 0.02,),
                  Text(
                    "Edgard Schultz",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 15, color: Colors.grey),
                      SizedBox(width: width * 0.02,),
                      Text(
                        "New York",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: height * 0.05,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: width * 0.06,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.plus, size: 13, color: Colors.grey),
                        SizedBox(width: width * 0.01,),
                        Text(
                          "Add New",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.03,),
              Center(
                child: Container(
                  width: width * 0.9,
                  height: height * 0.65,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF191d21),
                        spreadRadius: 0.6,
                        blurRadius: 0.7,
                        
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF191d21),
                          Color(0xFF242E3A)
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.6),
                              shape: BoxShape.circle
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.03,),
                      Text(
                        "Edgard Schultz",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.6)
                        ),
                      ),
                      Row(
                        children: [
                           Text(
                            "....",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: width * 0.02,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "367",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: FaIcon(FontAwesomeIcons.comments, color: Colors.white.withOpacity(0.8), size: 20,),
                          ),
                          SizedBox(width: width * 0.53,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "\$2,912,56",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.06,),
              
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: height * 0.02,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "10 April, 6:39 am",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      "Tesla model 3 - 10m 30s",
                      style: TextStyle(
                       color: Colors.grey
                      ),
                    ),
                    trailing: Text(
                      "\$103,24",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "8 April",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7)
                      ),
                    ),
                    subtitle: Text(
                      "Tesla model 5 - 15m",
                      style: TextStyle(
                       color: Colors.grey
                      ),
                    ),
                    trailing: Text(
                      "\$90,05",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 17
                      ),
                    ),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "6 April",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                    subtitle: Text(
                      "Tesla model 3 - 10m 30s",
                      style: TextStyle(
                       color: Colors.grey.withOpacity(0.4)
                      ),
                    ),
                    trailing: Text(
                      "\$150,64",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.8),
                        fontSize: 17
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    }
  }
}
