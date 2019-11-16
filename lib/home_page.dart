import 'package:flight_flutter/air_asia_bar.dart';
import 'package:flight_flutter/content_card.dart';
import 'package:flutter/material.dart';
import 'package:flight_flutter/rouded_button.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        children: <Widget>[
          AirAsiaBar(height: 210.0),
          Positioned.fill(
            child:Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40.0),
              child: Column(
                children: <Widget>[
                  _buildButtonRow(),
                  Expanded(
                    child: ContentCard(),
                  ),
              ],
            ),),
          )
        ],
      )
    );
  }

  Widget _buildButtonRow(){
    return Padding(
        padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          RoundedButton(text:"ONE WAY"),
          RoundedButton(text:"ROUND"),
          RoundedButton(text:"MULTICITY", selected:true),
      ],
    ),);
  }
}