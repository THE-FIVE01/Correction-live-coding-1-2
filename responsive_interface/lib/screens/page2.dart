import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_interface/screens/usersinfos.dart';

class Page2 extends StatefulWidget {
  Page2({Key key, this.title}) : super(key: key);


  final String title;
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  
  @override
  Widget build(BuildContext context) {
    
  final orientation = MediaQuery.of(context).orientation;
  final mediaQuery = MediaQuery.of(context).size;
 
    return Scaffold(
      backgroundColor: Colors.white,
    // Début du Code appBar ----------------------------------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            child: TextButton(
              onPressed: () => "test",
              child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.black,),
            ),
          )
        ],
      ),
      // Fin du Code appBar ----------------------------------------------------------------
      // Début du Code Body ----------------------------------------------------------------
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.07, vertical: mediaQuery.height * 0.01),
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
                  FaIcon(FontAwesomeIcons.edit)
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.02,),
              Container(
                height: mediaQuery.height * 0.07,
                width: mediaQuery.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03, vertical: mediaQuery.height * 0.01),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 17
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: FaIcon(FontAwesomeIcons.search, color: Colors.grey,),
                    ),
                    hintText: "Search for chats & messages"
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02,),

            ListView.builder(
              itemCount: userInfos.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                bool statu = true;
                return Column(
                  children: [
                    ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,

                        children: [
                          ListTile(
                            leading: Container(
                             width: mediaQuery.width * 0.13,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    //left: 2,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage("${userInfos[index]['image']}"),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    top: 33,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: (statu == userInfos[index]['status']) ?  Colors.green : Colors.orange,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            title: Text(
                              "${userInfos[index]['name']}",
                            ),
                            subtitle: Text(
                              "${userInfos[index]['message']}",
                            ),
                            trailing: FaIcon(FontAwesomeIcons.check),
                          )
                        ],
                    )
                  ],
                );
              }
              ),

            ],
          ),
        ),
      ),
      // Début du Code Body ----------------------------------------------------------------

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.userFriends,color: Colors.grey,), label: '',),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.phoneAlt,color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera,color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.comments,color: Colors.orange,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.portrait,color: Colors.grey,), label: '')
        ]
      ),
    );
  }
}