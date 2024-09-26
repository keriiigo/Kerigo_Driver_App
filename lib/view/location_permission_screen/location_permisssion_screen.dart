import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LocationPermissionScreen extends StatelessWidget {
  const LocationPermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('asset/image/mapImage.jpg'), fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 300,

            width: double.infinity,
            decoration: BoxDecoration(
                color: HexColor('#F7F7F7'),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Text('Allow Kerigo to access your location',),
          ),
        ),
      ),
    );
  }
}
