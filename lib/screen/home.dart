import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
  //return Row(
    return Column(
    //mainAxisAlignment: MainAxisAlignment.start,
    //mainAxisAlignment: MainAxisAlignment.center,
     //mainAxisAlignment: MainAxisAlignment.cmd,
     // //mainAxisAlignment: MainAxisAlignment.spaceAround,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        color: const Color.fromARGB(255, 55, 45, 45),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello, Flutter 5!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),

        ),

        ),
      Container(
        color: const Color.fromARGB(255, 55, 45, 45),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello, Flutter 5!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),

        ),

        ),
      Container(
        color: const Color.fromARGB(255, 55, 45, 45),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello, Flutter 5!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),

        ),

        ),
        Container(
        color: const Color.fromARGB(255, 55, 45, 45),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello, Flutter 5!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),

        ),

        )  
    ],
  );
  } 
}

   