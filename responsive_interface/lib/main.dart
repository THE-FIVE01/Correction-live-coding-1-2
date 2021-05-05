import 'package:flutter/material.dart';

import 'package:responsive_interface/screens/page1.dart';
import 'package:responsive_interface/screens/page2.dart';
import 'package:responsive_interface/screens/page3.dart';

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


class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    
    final orientation = MediaQuery.of(context).orientation;
    final mediaQuery = MediaQuery.of(context).size;
 
    //int _index = 0;
   
   
    return LayoutBuilder(builder: (context, contraints){
      if (orientation == Orientation.landscape) {
          return Scaffold(
          //backgroundColor: Colors.orange[300],
          
              body: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: mediaQuery.height * 0.15,
                        width: mediaQuery.width * 0.3,
                        decoration: BoxDecoration(
                          //color: Colors.orange,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => Page1())), 
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange
                          ),
                          child: Text(
                            "Messenger App",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.04,),
                      Container(
                        height: mediaQuery.height * 0.15,
                        width: mediaQuery.width * 0.3,
                        decoration: BoxDecoration(
                          //color: Colors.orange,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => Page2())), 
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange
                          ),
                          child: Text(
                            "Page 2",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.04,),
                      Container(
                        height: mediaQuery.height * 0.15,
                        width: mediaQuery.width * 0.3,
                        decoration: BoxDecoration(
                          //color: Colors.orange,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => Page3())), 
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange
                          ),
                          child: Text(
                            "Page 3",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );
          } else {
            return Scaffold(
          //backgroundColor: Colors.orange[300],
          
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: mediaQuery.height * 0.06,
                      width: mediaQuery.width * 0.6,
                      decoration: BoxDecoration(
                        //color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page1())), 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange
                        ),
                        child: Text(
                          "Messenger App",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: mediaQuery.height * 0.02,),
                    Container(
                      height: mediaQuery.height * 0.06,
                      width: mediaQuery.width * 0.6,
                      decoration: BoxDecoration(
                        //color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page2())), 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange
                        ),
                        child: Text(
                          "Page 2",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: mediaQuery.height * 0.02,),
                    Container(
                      height: mediaQuery.height * 0.06,
                      width: mediaQuery.width * 0.6,
                      decoration: BoxDecoration(
                        //color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page3())), 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange
                        ),
                        child: Text(
                          "Page 3",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
     
    });
  }
}
 