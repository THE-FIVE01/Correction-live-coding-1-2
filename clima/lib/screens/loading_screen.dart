import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
   Location location = Location();
   await location.getCurrentLocation();
   print(location.latitude);
   print(location.longitude);
   
    
  }

  void getData() async {
    var url = Uri.parse('api.openweathermap.org/data/2.5/weather?lat=35(&lon=139&appid=440687dd78810303564297d54f70cc26');
    http.Response response = await http.get(url);
    print(response.body);
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    }else {
      print(response.statusCode);
    }
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    getLocation();
  }
  

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       //Get the current location
      //       getLocation();
      //     },
      //     child: Text('Get Location'),
      //     style: ElevatedButton.styleFrom(
      //       primary: Colors.blue
      //     ),
      //   ),
      // ),
    );
  }
}
