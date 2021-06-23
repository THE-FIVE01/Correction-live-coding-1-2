import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inscription extends StatefulWidget {
  static const routeName = 'inscription';

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
            margin: const EdgeInsets.only(left: 5, top: 5),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                backgroundColor: Color(0xFFA8DEC1).withOpacity(0.7),
                child: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.orange.withOpacity(0.5),
                ),
              ),
            )
            
            ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.03),
              Container(
                width: width * 0.8,
                child: Center(
                  child: Text(
                    "Créer votre compte",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                width: width * 0.98,
                height: height * 0.8,
                padding: EdgeInsets.all(15),
                child: Form(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Nom et prénom")
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Color(0xFFA8DEC1).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextFormField(
                            
                            decoration: InputDecoration(
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: height * 0.01),
                       Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Adresse email")
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Color(0xFFA8DEC1).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextFormField(
                            
                            decoration: InputDecoration(
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                       Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Mot de passe")
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Color(0xFFA8DEC1).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextFormField(
                            //keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: FaIcon(FontAwesomeIcons.eye, color: Colors.green.withOpacity(0.6),)
                            ),
                            
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                       Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Confirmation du mot de passe")
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Color(0xFFA8DEC1).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextFormField(
                            //keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: FaIcon(FontAwesomeIcons.eye, color: Colors.green.withOpacity(0.6),)
                            ),
                            
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.08),
                      Container(
                   width: width * 0.35,
                   height: height * 0.07,
                   child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Inscription.routeName);
                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFA8DEC1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    child: Text(
                      "Créer mon compte",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                ),
                 )
                      
                    ],
                  )
                ),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
