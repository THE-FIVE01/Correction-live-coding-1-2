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

    if (orientation == Orientation.landscape) {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //title: Text(widget.title),
        leading: Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: FaIcon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: FaIcon(
              FontAwesomeIcons.ellipsisH,
              color: Colors.black
            ),
          ),
        ],
        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.02),
          child: Column(
            
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("images/pexels-nitin.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Center(
                    child: Text(
                      "Edgard Schultz",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 330),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Colors.grey,size: 15),
                        SizedBox(width: width * 0.02),
                        Text(
                          "New York",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.plus, color: Colors.grey, size: 12,),
                          SizedBox(width: width * 0.01),
                          Text(
                            "Add New",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                   
                   ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width * 0.9,
                    height: height * 0.46,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF191d21),
                          Color(0xFF242E3A)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:  Color(0xFF191d21),
                          blurRadius: 0.8,
                          spreadRadius: 0.9
                        ),
                        BoxShadow(
                          color: Color(0xFF242E3A),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                          SizedBox(height: height * 0.05),
                          Text(
                            "Edgard Schultz",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: [
                              Text(
                                "....",
                                style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 35),
                              ),
                              SizedBox(width: width * 0.02,),
                              Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  "3673",
                                  style: TextStyle(color: Colors.white.withOpacity(0.75), fontSize: 15),
                                ),
                              ),
                              SizedBox(width: width * 0.03,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: FaIcon(FontAwesomeIcons.comments, color: Colors.white.withOpacity(0.75), size: 17,),
                              ),
                               SizedBox(width: width * 0.58,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "\$2,912.56",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Tesla models 3, 10m - 33s"
                        ),
                        trailing: Text(
                          "-\$103.24",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "8 April",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        subtitle: Text(
                          "Tesla models S, 15m",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        trailing: Text(
                          "-\$90.05",
                          style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                       ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "6 April, 6:39 am",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                        
                        subtitle: Text(
                          "Tesla models 3, 10m - 33s",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        trailing: Text(
                          "-\$150.64",
                          style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )

                ],
              )
            ],
          ),
        ),
      )
    );
    } else {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //title: Text(widget.title),
        leading: Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: FaIcon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: FaIcon(
              FontAwesomeIcons.ellipsisH,
              color: Colors.black
            ),
          ),
        ],
        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.02),
          child: Column(
            
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("images/pexels-nitin.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Center(
                    child: Text(
                      "Edgard Schultz",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 125),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Colors.grey,size: 15),
                        SizedBox(width: width * 0.02),
                        Text(
                          "New York",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.plus, color: Colors.grey, size: 12,),
                          SizedBox(width: width * 0.01),
                          Text(
                            "Add New",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                   
                   ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width * 0.9,
                    height: height * 0.23,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF191d21),
                          Color(0xFF242E3A)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:  Color(0xFF191d21),
                          blurRadius: 0.8,
                          spreadRadius: 0.9
                        ),
                        BoxShadow(
                          color: Color(0xFF242E3A),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                          SizedBox(height: height * 0.05),
                          Text(
                            "Edgard Schultz",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: [
                              Text(
                                "....",
                                style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 35),
                              ),
                              SizedBox(width: width * 0.02,),
                              Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  "3673",
                                  style: TextStyle(color: Colors.white.withOpacity(0.75), fontSize: 15),
                                ),
                              ),
                              SizedBox(width: width * 0.03,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: FaIcon(FontAwesomeIcons.comments, color: Colors.white.withOpacity(0.75), size: 17,),
                              ),
                               SizedBox(width: width * 0.3,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "\$2,912.56",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Tesla models 3, 10m - 33s"
                        ),
                        trailing: Text(
                          "-\$103.24",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "8 April",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        subtitle: Text(
                          "Tesla models S, 15m",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        trailing: Text(
                          "-\$90.05",
                          style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                       ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "6 April, 6:39 am",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                        
                        subtitle: Text(
                          "Tesla models 3, 10m - 33s",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        trailing: Text(
                          "-\$150.64",
                          style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )

                ],
              )
            ],
          ),
        ),
      )
    );
    }
    
  }
}
