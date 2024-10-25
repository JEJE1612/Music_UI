import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final List<String> items;
  const ImageList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(
              items[index],
              width: 140,
              fit: BoxFit.fill,
            ),
            clipBehavior: Clip.antiAlias,
          );
        });
  }
}
