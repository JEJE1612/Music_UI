import 'package:flutter/material.dart';
import 'package:musicforproject/ui/screen/homescreen.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
      child: Image.asset('assets/logo.png',
      width: 170,
      ),
      ),
    );
  }
}
