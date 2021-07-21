import 'package:flutter/material.dart';
import 'package:instagram_ui/models/user.dart';

class StoryCard extends StatelessWidget {
  bool? my;
  User user;
  StoryCard({required this.user, this.my});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          ClipRRect(
            child: user.avatar,
            borderRadius: BorderRadius.circular(20),
          ),
          SizedBox(
            height: 3,
          ),
          Text(user.name),
        ],
      ),
    );
  }
}
