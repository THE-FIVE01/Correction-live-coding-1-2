import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app_test/pages/page22.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page22())),
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60),
                                bottomRight: Radius.circular(60)),
                            image: DecorationImage(
                                image: AssetImage('images/woman2.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      right: 0,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45.0,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.close),
                                color: Color(0xFFF95C58),
                                iconSize: 40,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xFFF858A4),
                            radius: 55.0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite),
                              color: Colors.white,
                              iconSize: 60,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 45.0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.star),
                              color: Colors.purple,
                              iconSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Madeline, 25",
                            style: TextStyle(
                                color: Color(0xFF272727),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Graphic Designer",
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 20, bottom: 30),
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.none,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFC2C2C2)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 0.5,
                                  spreadRadius: 0.4)
                            ]),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.paperPlane,
                            color: Colors.grey,
                            size: 35,
                          ),
                        )
                      ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              "About",
                              style: TextStyle(
                                  color: Color(0xFF272727),
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                  color: Color(0xFFC2C2C2),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My name is Madeline and I enjoy meet new people and finding ways to help them have and uplifting experience...",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Color(0xFFC2C2C2),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Text(
                            "Interests",
                            style: TextStyle(
                                color: Color(0xFF272727),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFCC7E0),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Music',
                                        style: TextStyle(fontSize: 17),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFCEDAFF),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Photo',
                                        style: TextStyle(fontSize: 17),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFE5BA),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      'Art History',
                                      style: TextStyle(fontSize: 17),
                                    )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFCEDAFF),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Design',
                                        style: TextStyle(fontSize: 17),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFE5BA),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Art Film',
                                        style: TextStyle(fontSize: 17),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFCC7E0),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      'Art History',
                                      style: TextStyle(fontSize: 17),
                                    )
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
