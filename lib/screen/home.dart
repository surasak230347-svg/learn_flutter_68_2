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
      Image.asset("assets/images/fow.png" , width: 200, height: 200,),
      SizedBox(height: 20,),
      Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg" ,
      width: 200, height: 200,),
    ],
  );
     

  
  } 
}

   