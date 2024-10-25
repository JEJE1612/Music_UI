import 'package:flutter/material.dart';

class Search_TextFiled extends StatelessWidget {
  const Search_TextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height:45 ,
         decoration: BoxDecoration(
          color: Colors.white,
          
              borderRadius: BorderRadius.circular(50)

         ),
        child: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            prefixIcon:Icon(Icons.search_rounded , color: Colors.grey,),
            suffixIcon:Icon(Icons.close,color:Colors.black)   ,
            label: Text("Mercy Chinwo")
            
          ),
        ),
      ),
    );
  }
}