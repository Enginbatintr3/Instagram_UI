import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/screens/main/home.dart';
import 'package:instagram_ui/screens/settings/profile.dart';
import 'package:instagram_ui/screens/reels/reels.dart';
import 'package:instagram_ui/screens/reels/search.dart';
import 'package:instagram_ui/screens/store/store.dart';
import 'package:instagram_ui/widgets/appBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Reels(),
    Store(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        color: Colors.black,
        activeColor: Colors.black,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.movie, title: 'Reels'),
          TabItem(icon: Icons.store, title: 'Store'),
          TabItem(icon: Icons.account_box, title: 'Profile'),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
