import 'package:flutter/material.dart';
import 'package:meteo_app/screens/location_screen.dart';
import 'package:meteo_app/services/location.dart';
import 'package:meteo_app/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKeys = '440687dd78810303564297d54f70cc26';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetWorkHelper netWorkHelper = NetWorkHelper('https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKeys&units=metric');
    
    var weatherData = await netWorkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData,);
    }));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SpinKitChasingDots(
            color: Colors.deepOrange,
            size: 100.0,
          ),
        ),
    );
  }
}
