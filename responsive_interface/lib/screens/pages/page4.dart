
import 'package:flutter/material.dart';
import 'package:responsive_interface/screens/usersinfos.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    int _currentindex = 3;
 
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            child: TextButton(
              onPressed: () {},
              child: Icon(Icons.more_vert, color: Colors.black),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          
          margin: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.06, vertical: 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.edit)
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.03,),
              Container(
                width: mediaQuery.width * 0.9,
                height: mediaQuery.height * 0.07,
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03, vertical: mediaQuery.height * 0.01),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for chats & messages",
                      prefixIcon: Icon(Icons.search, color: Colors.grey,
                    ),
                  ),
                )
              ),
              SizedBox(height: mediaQuery.height * 0.03,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                itemCount: userInfos.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,

                        children: [
                          ListTile(
                            leading: Container(
                              width: mediaQuery.width * 0.17,
                              height: mediaQuery.height * 0.20,
                              child: Stack(
                                //clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    left: 5,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage("${userInfos[index]['image']}"),
                                    ),
                                  ),
                                   Positioned(
                                    left: 40,
                                    top: 30,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.green,),
                                    ),
                                
                                ]
                              ),
                            ),
                            title: Text(
                              "${userInfos[index]['name']}",
                              style: TextStyle(

                              ),
                            ),
                            subtitle: Text(
                              "${userInfos[index]['message']}",
                              style: TextStyle(

                              ),
                            ),
                            trailing: Icon(Icons.check),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       
      
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.phone, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.comment, color: Colors.orange,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.portrait, color: Colors.grey,), label: ''),
        ]
      ),
    );
  }
}