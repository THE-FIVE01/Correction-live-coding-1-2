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
    "email": ""
  };

  void _saveForm() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      var url = Uri.parse('https://shop-app-7a29c-default-rtdb.firebaseio.com/users.json');
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
           padding: EdgeInsets.symmetric(horizontal: 15),
           //height: height / 2,
           //color: Colors.red,
           child: ListView(
             children: [
               Form(
                 key: _formKey,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       width: width * 0.96,
                       height: height * 0.08,
                       ///color: Colors.red,
                       child: Center(
                         child: TextFormField(
                           validator: (value) {
                             if (value.trim().isEmpty) {
                               return "Entrer un nom";
                             }
                             return null;
                           },
                           onSaved: (value) {
                             _dataForm["nom"] = value;
                           },
                           keyboardType: TextInputType.text,
                           decoration: InputDecoration(
                             hintText: "Entrer votre nom",
                             fillColor: Colors.grey[300],
                             filled: true,
                             border: UnderlineInputBorder(
                               borderSide: BorderSide.none,
                               borderRadius: BorderRadius.circular(30)
                             )
                           ),
                         ),
                       ),
                     ),
                      Container(
                       width: width * 0.96,
                       height: height * 0.08,
                       ///color: Colors.red,
                       child: Center(
                         child: TextFormField(
                           
                           validator: (value) {
                             if (value.trim().isEmpty && value.contains("@")) {
                               return "Entrer votre email";
                             }
                             return null;
                           },
                           onSaved: (value) {
                             _dataForm["email"] = value;
                           },
                           
                           keyboardType: TextInputType.text,
                           decoration: InputDecoration(
                             hintText: "Entrer votre email",
                             fillColor: Colors.grey[300],
                             filled: true,
                             border: UnderlineInputBorder(
                               borderSide: BorderSide.none,
                               borderRadius: BorderRadius.circular(30)
                             )
                           ),
                         ),
                       ),
                     ),
                     Center(
                       child: ElevatedButton(
                         onPressed: () {
                           _saveForm();
                         }, 
                         child: Text("Valider")
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