import 'package:flutter/material.dart';
import 'package:musicforproject/ui/widget/details_search_screen.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> itemsimages = [
      "assets/png/home/home1.png",
      "assets/png/home/home2.png",
      "assets/png/home/home3.png",
      "assets/png/home/home4.png",
      "assets/png/home/home5.png",
      "assets/png/home/home6.png"
    ];
    return ListView.separated(
      itemCount: itemsimages.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Card(
              child: Image.asset(
                itemsimages[index],
                width: 100,
                fit: BoxFit.fill,
              ),
              clipBehavior: Clip.antiAlias,
            ),
            SizedBox(width: 10,),
            Details_search_screen()
          ],
        );
      },
      separatorBuilder: (context, index) {
        return Divider(); // This is the separator
      },
    );
  }
}
