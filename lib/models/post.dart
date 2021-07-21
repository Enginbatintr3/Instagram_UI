import 'package:flutter/material.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/widgets/avatar.dart';

class Post {
  User user;
  Image image;
  int likes;
  String desc;
  Post({
    required this.desc,
    required this.image,
    required this.likes,
    required this.user,
  });
}

List<Post> posts = [
  Post(
    user: User(
      name: "Kenan",
      avatar: Avatar("assets/avatar2.jpeg", 20.0, 20.0),
    ),
    likes: 2831,
    desc: "Cute And Tiny Cat!",
    image: Image(
      image: AssetImage(
        "assets/posts/post1.jpg",
      ),
    ),
  ),
  Post(
    user: User(
      name: "Ismael",
      avatar: Avatar("assets/avatar3.png", 20.0, 20.0),
    ),
    likes: 2870,
    desc: "Cute Cat!",
    image: Image(
      image: AssetImage(
        "assets/posts/post2.jpg",
      ),
    ),
  ),
  Post(
    user: User(
      name: "Engin",
      avatar: Avatar("assets/avatar1.jpeg", 20.0, 20.0),
    ),
    likes: 182,
    desc: "War.",
    image: Image(
      image: AssetImage(
        "assets/posts/post3.jpg",
      ),
    ),
  ),
  Post(
    user: User(
      name: "Ünal",
      avatar: Avatar("assets/avatar4.jpeg", 20.0, 20.0),
    ),
    likes: 682,
    desc: "Bad War Bro",
    image: Image(
      image: AssetImage(
        "assets/posts/post3.jpg",
      ),
    ),
  ),
];

List<String> reels = [
  "assets/posts/post2.jpg",
  "assets/posts/post3.jpg",
  "assets/posts/post1.jpg",
  "assets/posts/post1.jpg",
];
