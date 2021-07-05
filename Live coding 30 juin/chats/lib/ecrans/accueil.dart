
import 'dart:convert';

import 'package:chats/ecrans/formulaire.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Accueil extends StatefulWidget {

  static const routeName = '/acceuil';

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

  List data = [];


  void getUser() async {
    var url = Uri.parse('https://chats-a183e-default-rtdb.firebaseio.com/users.json');
    var users = await http.get(url);

    setState(() {
       data = (jsonDecode(users.body) as Map).values.toList();
    });
    
   
  }
  
  @override
  void initState() {
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
     //final userinfos = ModalRoute.of(context)!.settings.arguments as Map;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton : FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, Formulaires.routeName);
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(9),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(data.length.toString()),),
        ),
        title: Row(
          children: [
            Text(
              "Users",
              style: TextStyle(
                color: Colors.black
              ),
            ),
            SizedBox(width: 5,),
            Text(
              "...",
              style: TextStyle(
                color: Colors.green
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              //infosUsers();
            }, 
            icon: Icon(Icons.alarm, color: Colors.black,)
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.green,),
                    hintText: "Search",
                    border: InputBorder.none
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,//userinfos.length,
              itemBuilder: (context,i) => Column(
                children: [
                  ListTile(
                     leading: CircleAvatar(),
                     title: Text(data[i]['email']),
                     subtitle: Text(data[i]['nom']),
                  ),
                ] 
              )
            ),
          )
          // ListView(
          //   children: [
          //       ListTile(
          //          leading: Image.network('${userinfos['urlimage']}'),
          //          title: Text('${userinfos['nom']}'),
          //          //subtitle: Text('salut comment va tu'),
          //       ),
          //   ],
          // )
        ],
      ),
    );
  }
}