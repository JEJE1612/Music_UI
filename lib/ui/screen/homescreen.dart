import 'package:flutter/material.dart';
import 'package:musicforproject/ui/screen/Bottom_Navigator.dart';
import 'package:musicforproject/ui/widget/cardimage.dart';
import 'package:musicforproject/ui/widget/tabpar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> itemsimages = [
      "assets/png/home/home1.png",
      "assets/png/home/home2.png",
      "assets/png/home/home3.png"
    ];
    List<String> itemsimages2 = [
      "assets/png/home/home4.png",
      "assets/png/home/home5.png",
      "assets/png/home/home6.png"
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      bottomSheet: Container(
        height: 40,
        decoration:const BoxDecoration(
            color:  Color.fromARGB(255, 32, 32, 32),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomSheet(
            backgroundColor: const Color.fromARGB(255, 32, 32, 32),
            onClosing: () {},
            builder: (BuildContext context) {
              return Row(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 20,
                      child: Image.asset(
                        "assets/png/splash.png",
                        width: 40,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                 const  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Expanded(
                        child: Column(
                      children: [
                        Text(
                          "Oh Jesus",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "Oh Jesus",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              Icons.arrow_left,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Bottom_Navigator(),
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'DISCOVER',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 30, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Container(
          child: ListView(
            children: [
              const Expanded(child: TabparMusic()),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Trending Albums",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ImageList(
                      items: itemsimages,
                    ))
                  ],
                ),
              ),
              Container(
                height: 200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Trending Songs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ImageList(
                      items: itemsimages2,
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
