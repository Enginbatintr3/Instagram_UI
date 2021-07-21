import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/models/post.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/widgets/avatar.dart';
import 'package:instagram_ui/widgets/story_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return StoryCard(
                  user: User(
                    avatar: users[index].avatar,
                    name: users[index].name,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
                height: 1,
              ),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          posts[index].user.avatar,
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            posts[index].user.name,
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Padding(
                            child: Icon(Icons.more_vert),
                            padding: EdgeInsets.only(right: 15),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          child: posts[index].image,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4, right: 4),
                            child: Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4, right: 4),
                            child: Icon(
                              Icons.chat_bubble_outline,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4, right: 4),
                            child: Icon(
                              Icons.send,
                              size: 30,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 4, right: 12),
                            child: Icon(
                              Icons.bookmark_border,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            "${posts[index].likes.toString()} likes",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            posts[index].user.name,
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            posts[index].desc,
                            style: GoogleFonts.openSans(),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
