import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/avatar.dart';

class User {
  String name;
  CircleAvatar avatar;
  User({required this.name, required this.avatar});
}

List<User> users = [
  User(
    name: "Engin",
    avatar: Avatar("assets/avatar1.jpeg", 35.0, 30.0),
  ),
  User(
    name: "Ismael",
    avatar: Avatar("assets/avatar3.png", 35.0, 30.0),
  ),
  User(
    name: "Kenan",
    avatar: Avatar("assets/avatar2.jpeg", 35.0, 30.0),
  ),
  User(
    name: "Ünal",
    avatar: Avatar("assets/avatar4.jpeg", 35.0, 30.0),
  ),
];
