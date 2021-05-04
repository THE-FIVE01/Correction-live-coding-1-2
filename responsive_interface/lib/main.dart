import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        primarySwatch: Colors.deepOrange,
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

// enum status {
//   orange,
//   green,
//   red,
//   grey
// }


class _MyHomePageState extends State<MyHomePage> {
  get ctx => null;

  List userInfos  = [
    {
      "image" : "images/beard.jpg",
      "name" : "Tialao",
      "message" : "Salut,  comment vas tu ?",
      "status" : true
    },
    {
      "image" : "images/man.jpg",
      "name" : "Mané",
      "message" : "Salut, Mané comment vas tu ?",
      "status" : true
    },
     {
      "image" : "images/pexels-italo-melo5.jpg",
      "name" : "Melo",
      "message" : "Salut, Melo comment vas tu ?",
      "status" : false
    },
     {
      "image" : "images/pexels-justin-shaifer.jpg",
      "name" : "Justin",
      "message" : "Salut,  comment vas tu ?",
      "status" : true
    },
     {
      "image" : "images/pexels-pixabay3.jpg",
      "name" : "Pixabay3",
      "message" : "Salut,  comment vas tu ?",
      "status" : false
    },
    {
      "image" : "images/pexels-nitin.jpg",
      "name" : "Nitin",
      "message" : "Salut,  comment vas tu ?",
      "status" : true
    },
    {
      "image" : "images/pexels-pixabay29.jpg",
      "name" : "Pixabay29",
      "message" : "Salut,  comment vas tu ?",
      "status" : false
    },
    {
      "image" : "images/pexels-sumit-kapoor.jpg",
      "name" : "Kapoor",
      "message" : "Salut,  comment vas tu ?",
      "status" : false
    },
    {
      "image" : "images/pexels-tu.jpg",
      "name" : "Tu",
      "message" : "Salut,  comment vas tu ?",
      "status" : false
    },
    {
      "image" : "images/pexels-nappy.jpg",
      "name" : "Nappy",
      "message" : "Salut,  comment vas tu ?",
      "status" : false
    },
     
     
  ];
  

  @override
  Widget build(BuildContext context) {
    
    final orientation = MediaQuery.of(context).orientation;
    final mediaQuery = MediaQuery.of(context).size;
 
    

    int _index = 0;
   
    if (orientation == Orientation.landscape) {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.title,
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
          setState(() {
            _index = currentIndex; 
          });
        },
        currentIndex: 3,
        //selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user, color: Colors.grey,), label: '',),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.phoneAlt, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.comments, color: Colors.orange,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.userAlt, color: Colors.grey,), label: ''),
        ]
      ),
       
      
    );
    } else {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.title,
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
          setState(() {
            _index = currentIndex; 
          });
        },
        currentIndex: 3,
        //selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user, color: Colors.grey,), label: '',),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.phoneAlt, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.comments, color: Colors.orange,), label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.userAlt, color: Colors.grey,), label: ''),
        ]
      ),
       
      
    );
    }
    
  }
}
 