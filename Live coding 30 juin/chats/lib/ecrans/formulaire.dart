import 'dart:convert';

import 'package:chats/ecrans/accueil.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class Formulaires extends StatefulWidget {
  static const routeName = '/formulaire';
  @override
  _FormulairesState createState() => _FormulairesState();
  
}

class _FormulairesState extends State<Formulaires> {
  final _formkey = GlobalKey<FormState>();
  var database = {
    'nom': '',
    'email': '',
    'motdepass':'',
    "confirmation":'',
    "urlimage":'',
  };
  void _saveform() async{
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      return;
    }
      _formkey.currentState!.save();
      
    var url = Uri.parse('https://chats-a183e-default-rtdb.firebaseio.com/users.json');
    var response = await http.post(url, body: json.encode(database));
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

  }
 var erro ='';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: width * 0.99,
            margin: EdgeInsets.symmetric(horizontal: 30),
            //color: Colors.red,
            child: Column(
              children: [
                SizedBox(height: height * 0.03,),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.arrow_back_ios)
                    ),
                    SizedBox(width: width * 0.13,),
                    Text(
                      "Inscription",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ],
                ),
                SizedBox(height: height * 0.08,),
                Container(
                  width: width * 0.98,
                  height: height * 0.5,
                  //color: Colors.red,
                  child: ListView(
                    children: [
                      Form(
                        key: _formkey,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Nom",
                                style: TextStyle(
                                  fontSize: 17
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01,),
                            TextFormField(
                              onSaved: (value){
                                database['nom']= value!;
                              },
                              
                              decoration: InputDecoration(
                                
                                fillColor: Colors.grey[300],
                                filled: true,
                                border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                                ),
                              ),
                              validator: (value){
                                if (value!.length <=0 || value.isEmpty) {
                                  return 'Entrez un nom svp';
                                  
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                            ),
                    //--------------------------------------------------------
                            SizedBox(height: height * 0.01,),
                             Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: 17
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01,),
                            TextFormField(
                              onSaved: (value){
                                database['email']= value!;
                              },
                              decoration: InputDecoration(
                                
                                fillColor: Colors.grey[300],
                                filled: true,
                                border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                                ),
                              ),
                              validator: (value){
                                if (!value!.contains('@')) {
                                  return 'Entrez un mail valide';
                                  
                                }
                                if (value.isEmpty) {
                                  return 'Entrez un mail';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                            ),
                            //--------------------------------------------------------
                            SizedBox(height: height * 0.01,),
                             Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Mot de passe",
                                style: TextStyle(
                                  fontSize: 17
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01,),
                            TextFormField(
                              onSaved: (value){
                                database['motdepass']= value!;
                              },
                              
                              decoration: InputDecoration(
                                
                                fillColor: Colors.grey[300],
                                filled: true,
                                border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                                ),
                              ),
                              // keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                               validator: (value){
                                if (value!.isEmpty || value.length <=0) {
                                  return 'Entrez un mot de passe contenant au moins 6 éléments';
                                  
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: height * 0.01,),
                             Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Confirmer le mot de passe",
                                style: TextStyle(
                                  fontSize: 17
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01,),
                            TextFormField(
                              onSaved: (value){
                                database['confirmation']= value!;
                              },
                              decoration: InputDecoration(
                                
                                fillColor: Colors.grey[300],
                                filled: true,
                                border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                                ),
                              ),
                              validator: (value){
                                if (value!.isEmpty || value.length <= 0) {
                                  return 'Entrez un mot de passe contenant au moins 6 éléments';
                                  
                                }
                                return null;
                              },
                              // keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ),
                
                Row(),
                Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey
                      )
                    ),
                    child: FittedBox(
                      child: Image.network(""),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      onSaved: (value){
                                database['urlimage']= value!;
                              },
                      decoration: InputDecoration(
                        labelText: "Image url"
                      ),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: null,
                      focusNode: null,
                      onFieldSubmitted: (_) {
                       
                      },
                      
                      
                    ),
                  )
                ],
              ),
              SizedBox(height: height * 0.05,),
                Container(
                  width: width * 0.6,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellow[600]
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _saveform();
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('patientez svp')),
                        );
                        Navigator.pop(context);
                      }
                    
                      // if (database['motdepass']==database['confirmation']) {
                        
                      // }
                      // else{
                      //   print('different');
                      //   setState(() {
                      //     var erro='les mots de pass doivent etre correct';
                      //   });
                      // }
                      
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    child: Text(
                      "S'incrire",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}