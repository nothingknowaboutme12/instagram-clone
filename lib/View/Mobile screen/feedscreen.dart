import 'package:flutter/material.dart';
import 'package:instagram/Controller/bottom_controller.dart';
import 'package:instagram/View/add_video_screen.dart';
import 'package:instagram/View/favourite_screen.dart';
import 'package:instagram/View/profiles_screen.dart';
import 'package:instagram/View/search_screen.dart';
import 'package:provider/provider.dart';

class bottomtab extends StatelessWidget {
  // bottomtab({Key? key}) : super(key: key);
  List<Widget> screen = [
    feedScreen(),
    searchScreen(),
    addScreen(),
    favouriteScreen(),
    profileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final bottomnav = Provider.of<bottomNaviagtion>(context);
    return Scaffold(
      body: screen[bottomnav.index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomnav.index,
        onTap: (value) {
          bottomnav.changeindex(value);
        },
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}

class feedScreen extends StatelessWidget {
  const feedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("I am in feed screen"),
    ));
  }
}
