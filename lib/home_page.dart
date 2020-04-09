import 'package:flightsearch/rounded_button.dart';
import 'package:flutter/material.dart';
import 'air_asia_bar.dart';
import 'content_card.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AirAsiaBar(height: 210.0),
          Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40),
                child: new Column(
                  children: <Widget>[
                    _buildButtonsRow(),
                    Container(
                      child: ContentCard(),
                    ),
                  ],
                ),
              )
          )
        ],
      )
    );
  }
}

Widget _buildButtonsRow(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        new RoundedButton(text: "KUMASI"),
        new RoundedButton(text: "ACCRA"),
        new RoundedButton(text: "TAKORADI", selected: true),
      ],
    ),
  );
}