import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody_form/ecrans/inscription.dart';

class Accueil extends StatefulWidget {
  static const routeName = '/';

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // final String assetName = 'assets/images/unlock_24mb.svg';
    // final Widget svg = SvgPicture.asset(assetName);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 150, bottom: 60),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFA8DEC1).withOpacity(0.7),
                        child: FaIcon(
                          FontAwesomeIcons.utensils,
                          color: Colors.orange.withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      margin: const EdgeInsets.only(right: 100),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFA8DEC1).withOpacity(0.7),
                        child: FaIcon(
                          FontAwesomeIcons.euroSign,
                          color: Colors.orange.withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      width: width * 0.6,
                      height: height * 0.25,
                      child: SvgPicture.asset("assets/images/unlock_24mb.svg"),
                      // child: Image(
                      //   image: AssetImage("images/iphone.jpg"),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              width: width * 0.8,
              child: Center(
                child: Text(
                  "Bienvenue sur Foody !",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
             SizedBox(height: height * 0.03),
             Container(
              width: width * 0.8,
              child: Center(
                child: Text(
                  "Commandez de la nourritue et recevez la livraison le plus rapidement en ville",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.35,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.green)
                      )
                    ),
                    child: Text(
                      "Se connecter",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.04),
                 Container(
                   width: width * 0.35,
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
                      "S'incrire",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                ),
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}
