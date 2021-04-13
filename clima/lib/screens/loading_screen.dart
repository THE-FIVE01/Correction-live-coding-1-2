import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class LoadingScreen extends StatelessWidget {


    Future<Position> _determinePosition() async {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.deniedForever) {
          // Permissions are denied forever, handle appropriately. 
          return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
        } 

        if (permission == LocationPermission.denied) {
          return Future.error(
              'Location permissions are denied');
        }
      }
      return await Geolocator.getCurrentPosition();
    }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            print('hello world');
            var response = await _determinePosition();
            Navigator.push(context, MaterialPageRoute(builder: (ctx)=> LocationScreen(position: response,)));
          },
          child: Text('Get Location'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue
          ),
        ),
      ),
    );
  }
}
