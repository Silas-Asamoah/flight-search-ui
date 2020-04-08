import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AirAsiaBar extends StatelessWidget{
  final double height;

  const AirAsiaBar({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [Colors.red, const Color(0xFFE64C85)],
            ),
          ),
          height: height,
        ),
        new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: new Text(
            "AirAsia",
            style: GoogleFonts.nothingYouCouldDo(
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}