import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_interface/screens/usersinfos.dart';


class Page3 extends StatefulWidget {
  Page3({Key key, this.title}) : super (key: key);

  String title;

  @override 
  _Page3State createState() => _Page3State();

}

class _Page3State extends State<Page3> {

  Widget build(BuildContext context) {

    //final orientation = MediaQuery.of(context).orientation;
    final mediaQuery = MediaQuery.of(context).size;
    int _currentIndex = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            child: TextButton(
              onPressed: () => 'test',
              child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.black,),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03, vertical: mediaQuery.width * 0.03),
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
              SizedBox(height: mediaQuery.height * 0.03,),
              Container(
                width: mediaQuery.width * 0.9,
                height: mediaQuery.height * 0.07,
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03, vertical: mediaQuery.width * 0.02),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: TextField(
                  
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for chats & messages",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: FaIcon(FontAwesomeIcons.search, color: Colors.grey,),
                    )
                  ),
                ),
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
                               children: [
                                 Positioned(
                                   left: 1,
                                   child: CircleAvatar(
                                     radius: 30,
                                     backgroundImage: AssetImage("${userInfos[index]['image']}"),
                                   ),
                                 ),
                                 Positioned(
                                   left: 45,
                                   top: 30,
                                   child: CircleAvatar(
                                     radius: 10,
                                     backgroundColor: Colors.green,
                                   ),
                                 )
                               ],
                             ),
                           ),
                           title: Text(
                             "${userInfos[index]['name']}",
                             style: TextStyle(
                               fontWeight: FontWeight.bold
                             ),
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
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.userFriends, color: Colors.grey), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.phoneAlt, color: Colors.grey), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera, color: Colors.grey), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.comments, color: Colors.orange), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.portrait, color: Colors.grey), label: ''),
         
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
  }
  
}