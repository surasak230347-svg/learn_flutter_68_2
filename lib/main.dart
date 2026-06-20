import 'package:flutter/material.dart';
import 'package:learn_flutter_68_2/screen/home.dart';
import 'package:learn_flutter_68_2/screen/item.dart';
import 'package:learn_flutter_68_2/screen/addform.dart';{

// void main() {
//  // const app = MaterialApp (title: "หัวข้อ" , home: Text("Hello, World!"));
// //runApp(app);
// runApp(
//   MaterialApp(
//     title: "หัวข้อ",
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("หัวข้อ"),
//         backgroundColor: Colors.pinkAccent,
//         centerTitle: true,
//       ),
//       body: Home(),
//   ),
//   ),  
// );
// }

// runApp(AddForm());
// }
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "เพิ่มข้อมูล",
      home: Scaffold(
        appBar: AppBar(
          title: Text("เพิ่มข้อมูล"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: AddForm(),
      ),
    );
  }
}
      

