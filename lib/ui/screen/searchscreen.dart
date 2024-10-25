import 'package:flutter/material.dart';
import 'package:musicforproject/ui/screen/Bottom_Navigator.dart';
import 'package:musicforproject/ui/screen/homescreen.dart';
import 'package:musicforproject/ui/screen/music_list.dart';
import 'package:musicforproject/ui/screen/saved_collection.dart';
import 'package:musicforproject/ui/widget/Search_list.dart';
import 'package:musicforproject/ui/widget/searchtextfield.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({super.key});

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  
    List<Widget> myWidgets = [
      const HomeScreen(),
      const Search_Screen(),
      const MusicList(),
      const SavedCollection()];
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
    return Scaffold(
     backgroundColor: Colors.black,
       appBar: AppBar(
        leading: Image.asset("assets/png/back.png"),
        backgroundColor: Colors.black,
       )
      ,bottomNavigationBar:Bottom_Navigator(),
      body: ListView(
        children: [
          const Search_TextFiled(),
          const SizedBox(height: 20,),
           Container(
            padding:const EdgeInsets.symmetric(horizontal: 30),
            height:600,
            child:const SearchList())


        ],
      ),
    );
  }
}