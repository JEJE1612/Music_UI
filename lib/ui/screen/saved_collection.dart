import 'package:flutter/material.dart';
import 'package:musicforproject/ui/screen/Bottom_Navigator.dart';


class SavedCollection extends StatefulWidget {
  const SavedCollection({super.key});

  @override
  State<SavedCollection> createState() => _SavedCollectionState();
}

class _SavedCollectionState extends State<SavedCollection> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("assets/png/back.png"),
        title:const Text("Saved Collection",
            style: TextStyle(color: Colors.white, fontSize: 20)),
       actions:const [
        Icon(Icons.settings_suggest)
       ],     
      ),
      bottomNavigationBar: Bottom_Navigator(),
      body: Container(
        height: 700,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Row(
                 children: [
                  Card(
                    child: Image.asset("assets/png/app_icon.png",
                    width: 100,
                  fit:BoxFit.fill
                    ),
                  ),
                 Container(
                  child:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gospel",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                      ),),
                      Row(
                        children: [
                          Text("2 Album ",style:TextStyle(
                            color: Colors.orange
                          )),
                         VerticalDivider(
                          width: 10,
                         thickness: 10,
                         color: Colors.orange, 
                         ) ,
                         Text("7 Songs ",style:TextStyle(
                            color: Colors.orange
                          )),
                        ],
                      )
                    ],
        
                  ),
                 )
                 ],    
        
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 5),
      ),
    );
  }
}
