import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String namedbutton;
  const TabButton({super.key, required this.namedbutton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7),
      child: MaterialButton(
        minWidth: 20,
        focusColor: Colors.white70,
        height: 35,
        elevation: 3.0,
        color: Colors.black,
        onPressed: () {},
        child: Text(
          namedbutton,
          style: TextStyle(color: Colors.white),
        ),
        shape:CircleBorder(
          eccentricity: 1,
         side: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 0.5
         )
        )
      ),
    );
  }
}

class TabparMusic extends StatelessWidget {
  const TabparMusic({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "All",
      "Pop",
      "Rock",
      "Hip-Hop",
      "R&B",
      "Country",
      "Jazz",
      "Classical",
      "Electronic",
      "Raggae",
      "Blues"
    ];
    return Container(
      height:60,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          cacheExtent: 20,    
          itemBuilder: (context, index) {
            return TabButton(namedbutton: items[index]);
          }),
    );
  }
}
