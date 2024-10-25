import 'package:flutter/material.dart';
import 'package:musicforproject/ui/screen/homescreen.dart';
import 'package:musicforproject/ui/screen/music_list.dart';
import 'package:musicforproject/ui/screen/saved_collection.dart';
import 'package:musicforproject/ui/screen/searchscreen.dart';

class Bottom_Navigator extends StatefulWidget {
  
  @override
  State<Bottom_Navigator> createState() => _Bottom_NavigatorState();
}

class _Bottom_NavigatorState extends State<Bottom_Navigator> {
  List<Widget> myWidgets = [
    const HomeScreen(),
    const Search_Screen(),
    const MusicList(),
    const SavedCollection()
  ];
  int index = 0;
  void updateUI(int newVal) {
    setState(() {
      index = newVal;
    });
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => myWidgets[index]));
  }

  @override
  Widget build(BuildContext context) {
    return   BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.search),
              label: "search"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.music_note),
              label: "music"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.save_alt_outlined),
              label: "saved collection")
        ],
        currentIndex: index,
        onTap: updateUI);
  }
}
