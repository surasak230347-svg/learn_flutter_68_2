import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style : TextButton.styleFrom( 
            backgroundColor: const Color.fromARGB(255, 102, 119, 134),
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {
            print("กดปุ่มแล้ว");
          },
          child: Text("กดฉันสิ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          FilledButton(
            style : FilledButton.styleFrom(
          
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),

          onPressed: () {

            print("กดปุ่มแล้ว");

          },


          child: Text("กดฉันสิ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
           const SizedBox(height: 20),
          OutlinedButton(
            style : OutlinedButton.styleFrom(
            
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {

            print("กดปุ่มแล้ว");

          },


          child: Text("กดฉันสิ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style : ElevatedButton.styleFrom(
           
            foregroundColor: const Color.fromARGB(255, 99, 4, 4),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {

            print("กดปุ่มแล้ว");

          },


          child: Text("กดฉันสิ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),

        ],


      ),
    );

  
  } 
}

   