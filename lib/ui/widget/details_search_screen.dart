import 'package:flutter/material.dart';

class Details_search_screen extends StatelessWidget {
  const Details_search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Text("Album - 2 songs - 2021",style: TextStyle(
                    color: Colors.white
                  ),),
          SizedBox(height: 1,),
          Text("Satisfied",style: TextStyle(
                    color: Colors.white,
                      fontSize: 25
                  ),),
          SizedBox(height: 1,),
          Text("Mercy Chinwo",style: TextStyle(
                    color: Colors.white,
                  
                  ),),
          
          SizedBox(height: 3,),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.play_arrow,color: Colors.orange,),
                  Text("2",style: TextStyle(
                    color: Colors.white
                  ),)
                ],
              )
              ,Row(
                children: [
                  Icon(Icons.save_alt_outlined,color: Colors.orange,),
                 Text("1",style: TextStyle(
                    color: Colors.white
                  ),)
    
                ],
              )
              ,Row(
                children: [
                  Icon(Icons.heart_broken_rounded,color: Colors.orange,),
                Text("2",style: TextStyle(
                    color: Colors.white
                  ),)
  
                ],
              )
              
            ],
          )
          
         ],
      ),
    );
  }
}