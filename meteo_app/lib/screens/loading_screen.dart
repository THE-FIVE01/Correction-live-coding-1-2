import 'package:flutter/material.dart';
import 'package:meteo_app/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKeys = '440687dd78810303564297d54f70cc26';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=$apiKeys');
    var response = await http.get(url);
    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // dynamic dataFinal = data;
      // print(data);

      int condition = data['weather'][0]['id'];
      double temperature = data['main']['temp'];
      String cityName = data['name'];

      print(temperature);
      print(condition);
      print(cityName);
      
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    // getData();

    return Scaffold(
        // body: Center(
        //   child: ElevatedButton(
        //     onPressed: () {
        //       //Get the current location
        //       getLocation();
        //     },
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.blue,
        //     ),
        //     child: Text('Get Location'),
        //   ),
        // ),
        );
  }
}
