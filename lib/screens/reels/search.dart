import 'package:flutter/material.dart';
import 'package:instagram_ui/models/post.dart';
import 'package:instagram_ui/widgets/field.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                        image: AssetImage(
                      reels[index],
                    )),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                        image: AssetImage(
                      reels[index],
                    )),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
