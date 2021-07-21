import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/models/post.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/widgets/button3d.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage(
                            reels[index],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          posts[index].user.avatar,
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            posts[index].user.name,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 70, right: 70),
                            child: Icon(
                              Icons.fiber_manual_record,
                              size: 10,
                            ),
                          ),
                          Button3D(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            height: 50,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: reels.length,
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
