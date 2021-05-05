import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_interface/screens/usersinfos.dart';


class Page1 extends StatefulWidget {
  // Page1({Key key, this.title}) : super(key: key);


  // final String title;
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  
  @override
  Widget build(BuildContext context) {
    
  final orientation = MediaQuery.of(context).orientation;
  final mediaQuery = MediaQuery.of(context).size;
 
  //int _index = 0;

  if (orientation == Orientation.landscape) {
        return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Page",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          actions: [
            Container(
              child: TextButton(
                onPressed: () => 'test',
                child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.black,),
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chats",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      FaIcon(FontAwesomeIcons.edit, color: Colors.black,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: mediaQuery.height * 0.2,
                  width: mediaQuery.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 5, ),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      onTap: () => '',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: FaIcon(FontAwesomeIcons.search,),
                        ),
                        hintText: 'Search for chat & messages'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                ListView.builder(
                  itemCount: userInfos.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {

                  bool statu = true;

                    return Column(
                      children: [
                        ListView(
                          //scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ListTile(
                              leading: Container(
                                width: 50,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: 10,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("${userInfos[index]["image"]}"),
                                      )
                                    ),
                                    Positioned(
                                      left: 40,
                                      top: 30,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: (statu == userInfos[index]["status"]) ? Colors.green : Colors.orange,
                                      )
                                    ),
                                  ],
                                ),
                              ),
                              title: Text(
                                "${userInfos[index]["name"]}", 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "${userInfos[index]["message"]}", 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              trailing: FaIcon(FontAwesomeIcons.check,
                            ),
                            )
                          ],
                        )
                      ],
                    );
                }),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.grey,
          elevation: 10,
          onTap: (currentIndex) {
            // setState(() {
            //   _index = currentIndex; 
            // });
          },
          currentIndex: 3,
          //selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user, color: Colors.grey,), label: '',),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.phoneAlt, color: Colors.grey,), label: ''),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera, color: Colors.grey,), label: ''),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.comments, color: Colors.orange,), label: ''),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.portrait, color: Colors.grey,), label: ''),
          ]
        ),
        
        
      );
      } else {
        return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          actions: [
            Container(
              child: TextButton(
                onPressed: () => 'test',
                child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.black,),
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chats",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      FaIcon(FontAwesomeIcons.edit, color: Colors.black,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: mediaQuery.height * 0.07,
                  width: mediaQuery.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 5, ),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      onTap: () => '',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: FaIcon(FontAwesomeIcons.search,),
                        ),
                        hintText: 'Search for chat & messages'
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 15,),
                // Container(
                //   padding: EdgeInsets.all(32),
                //   child: TextField(
                    
                //     keyboardType: TextInputType.text,
                //     decoration: InputDecoration(
                //       labelText: "test",
                //       hintText: "test",
                //       //border: OutlineInputBorder(gapPadding: 13, borderRadius: BorderRadius.circular(50)),
                //       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(50)),
                //       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.circular(50)),
                      
                //     ),
                    
                //   ),
                // ),
                SizedBox(height: 15,),
                ListView.builder(
                  itemCount: userInfos.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {

                  bool statu = true;

                    return Column(
                      children: [
                        ListView(
                          //scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ListTile(
                              leading: Container(
                                width: 50,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: 10,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("${userInfos[index]["image"]}"),
                                      )
                                    ),
                                    Positioned(
                                      left: 40,
                                      top: 30,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: (statu == userInfos[index]["status"]) ? Colors.green : Colors.orange,
                                      )
                                    ),
                                  ],
                                ),
                              ),
                              title: Text(
                                "${userInfos[index]["name"]}", 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "${userInfos[index]["message"]}", 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              trailing: FaIcon(FontAwesomeIcons.check,
                            ),
                            )
                          ],
                        )
                      ],
                    );
                }),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.grey,
          elevation: 10,
          onTap: (currentIndex) {
            // setState(() {
            //   _index = currentIndex; 
            // });
          },
          currentIndex: 3,
          //selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user, color: Colors.grey,), label: '',),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.phoneAlt, color: Colors.grey,), label: ''),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera, color: Colors.grey,), label: ''),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.comments, color: Colors.orange,), label: ''),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.portrait, color: Colors.grey,), label: '',),
          ]
        ),
        
        
      );
    }
  }
}