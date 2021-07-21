import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldCard extends StatelessWidget {
  double paddingleft;
  double paddingright;
  double paddingtop;
  double paddingbottom;
  String hintText;

  FieldCard(
      {required this.hintText,
      required this.paddingleft,
      required this.paddingbottom,
      required this.paddingright,
      required this.paddingtop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: paddingbottom,
          top: paddingtop,
          left: paddingleft,
          right: paddingright),
      child: new TextFormField(
        decoration: new InputDecoration(
          labelText: hintText,
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.openSans(),
      ),
    );
  }
}
