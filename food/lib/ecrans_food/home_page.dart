import 'package:flutter/material.dart';
import 'package:food/ecrans_food/food_page_1.dart';
import 'package:food/ecrans_food/food_page_2.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, String title}) : super(key: key);
  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Function atteindrePage1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FoodPage1()));
  }

  Function atteindrePage2() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FoodPage2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.food_bank,
              size: 40,
            ),
          ),
        ),
        title: Text(
          'FOOD - APP',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        //color: Colors.deepOrange,
        height: double.infinity,
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 50,
                child: ElevatedButton(
                    onPressed: () => atteindrePage1(),
                    child: Text(
                      'Food - Restaurant',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 15.0,
                    )),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                    onPressed: () => atteindrePage2(),
                    child: Text(
                      'Food - commandes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 15.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
