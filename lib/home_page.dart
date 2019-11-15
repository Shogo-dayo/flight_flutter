import 'package:flight_flutter/air_asia_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        children: <Widget>[
          AirAsiaBar(height: 210.0),
        ],
      )
    );
  }
}