import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBar() {
  return AppBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    backgroundColor: Colors.white,
    title: Text(
      "Instagram",
      style: GoogleFonts.openSans(fontSize: 22, color: Colors.black),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_box,
          color: Colors.black,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.favorite_border,
          color: Colors.black,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.send,
          color: Colors.black,
        ),
      ),
    ],
  );
}
