import 'package:flutter/material.dart';

CircleAvatar Avatar(String image, double radius1, radius2) {
  return CircleAvatar(
    //35
    radius: radius1,
    backgroundColor: Colors.grey.shade400,
    child: CircleAvatar(
      //30
      radius: radius2,
      backgroundImage: AssetImage(
        image,
      ),
    ),
  );
}
