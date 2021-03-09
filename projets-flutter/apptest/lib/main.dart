import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Les widgets basiques',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
  
}

class  Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
  
}

class  _Home extends State<Home> {

  bool oui = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double largeur = MediaQuery.of(context).size.width;

    return new Scaffold(
      appBar: AppBar(
        title: Text('THE-FIVE'),
        leading: Icon(Icons.account_circle),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        //centerTitle: false,
      ),
      //backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Aligner tout nos éléments par rapport au centre
          children: [
            Text(
              'Salut les codeurs',
              style: TextStyle(
                color: (oui) ? Colors.grey[900] : Colors.deepOrange,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
            Card(
              elevation: 10.0,
              child: Container(
                color: Colors.yellow,
                width: MediaQuery.of(context).size.width / 1.5,
                height: 200.0,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2019/01/30/07/45/web-3963945_1280.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete), 
              iconSize: 35.0,
              onPressed: () { 
                print('on a appuyer sur le bouton');
                setState(() {
                  oui = !oui;
                });
              }
            ),
            TextButton(
              onPressed: boutonAppuye, 
              child: Text(
                'Appuyez moi',
                textScaleFactor: 2,
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green,
                ),
            ), 
            ElevatedButton(
              onPressed: boutonAppuye,
              child: Text('je sui plus haut que toi', textScaleFactor: 1.5),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                elevation: 7.0
              ),
            
            ),
            Container(
              height: largeur / 8,
              color: Colors.deepOrange,
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size:  largeur / 10,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.white,
                    size:  largeur / 10,
                  ),
                  Icon(
                    Icons.palette,
                    color: Colors.white,
                    size:  largeur / 10,
                  ),
                  Icon(
                    Icons.directions_bike,
                    color: Colors.white,
                    size:  largeur / 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: boutonAppuye,
        elevation: 8.0,
        tooltip: 'Changer oui',
        child: Icon(Icons.near_me_sharp),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    ); 
  }
   
   void boutonAppuye() {
     setState(() {
       oui = !oui;
     });
   }

}