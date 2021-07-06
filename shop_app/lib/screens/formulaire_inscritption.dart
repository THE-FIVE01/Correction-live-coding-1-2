import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FormulaireScreen extends StatefulWidget {
 static const routeName = "/formulaire";

  @override
  _FormulaireScreenState createState() => _FormulaireScreenState();
}

class _FormulaireScreenState extends State<FormulaireScreen> {

  final _formKey = GlobalKey<FormState>();

  Map _dataForm = {
    "nom": "",
    "email": "",
    "contact": ""
  };

  void _saveForm() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      var url  = Uri.parse("https://formulaire-c7351-default-rtdb.firebaseio.com/users.json");
      var response = await http.post(url, body: json.encode(_dataForm));
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
  
    }
   
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Formulaire d'inscription"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: width * 0.98,
            //color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                Form(
                  key: _formKey,
                  child: Column(

                    children: [
                      SizedBox(height: height * 0.03,),
                      Container(
                        width: width * 0.96,
                        height: height * 0.08,
                        //color: Colors.orange,
                        child: Center(
                          child: TextFormField(
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return "Veuillez entrer un nom svp!";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              _dataForm["nom"] = val;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Entrer vorte nom",
                              fillColor: Colors.grey[300],
                              filled: true,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        )
                        ,
                      ),
                      Container(
                        width: width * 0.96,
                        height: height * 0.08,
                        //color: Colors.orange,
                        child: Center(
                          child: TextFormField(
                            validator: (value) {
                              if (value.trim().isEmpty && value.contains("@")) {
                                return "Veuillez entrer votre email!";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              _dataForm["email"] = val;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Entrer votre email",
                              fillColor: Colors.grey[300],
                              filled: true,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        )
                        ,
                      ),
                      Container(
                        width: width * 0.96,
                        height: height * 0.08,
                        //color: Colors.orange,
                        child: Center(
                          child: TextFormField(
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return "Veuillez entrer votre contact!";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              _dataForm["contact"] = val;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Entrer votre contact",
                              fillColor: Colors.grey[300],
                              filled: true,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        )
                        ,
                      ),
                      Center(
                        child: Container(
                          width: width * 0.3,
                          child: ElevatedButton(
                            onPressed: () {
                              _saveForm();
                            }, 
                            child: Text(
                              "Valider",
                              style: TextStyle(fontSize: 20),
                            )
                          ),
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}