import 'package:flutter/material.dart';
import 'package:musicforproject/ui/screen/Bottom_Navigator.dart';
import 'package:musicforproject/ui/widget/details_search_screen.dart';

class MusicList extends StatefulWidget {
  const MusicList({super.key});

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Image.asset('assets/png/back.png'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar:Bottom_Navigator(),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Card(
                      child:  Image.asset(
                        "assets/png/home/home1.png",
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                  const  SizedBox(
                      width: 10,
                    ),
                   const Details_search_screen()
                  ],
                ),
              ),Container(
                height: 800,
                padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: ListView.separated(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                        const  Row(
                            children: [
                              Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70,left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Chinedum",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text("Mercy Chinwo",
                                  style: TextStyle(
                                      color: Colors.white),)
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon:const Icon(Icons.heart_broken, color: Colors.white,)),
                                IconButton(
                                    onPressed: () {},
                                    icon:const Icon(Icons.save_alt_outlined ,color: Colors.white,))
                              ],
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 15,
                      ); // This is the separator
                    },
                  ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
