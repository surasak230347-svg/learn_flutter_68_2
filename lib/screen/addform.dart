import 'package:flutter/material.dart';
import 'package:learn_flutter_68_2/model/person.dart';



class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
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
        body:Padding(padding: EdgeInsetsGeometry.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Age", keyboardType: TextInputType.number,
              ),
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: "  Job",
              ),
              items: Job.values.map((key) {
                 final job = key;
                return DropdownMenuItem(
                  value: key,
                  child: Text(key.title),
                );
              }).toList(),
              onChanged: (value) {
                print("Selected job: ${value?.title}");
          
              },   
            ),
            SizedBox(height: 20),
            FilledButton(
              style : FilledButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              onPressed: () {
                print("เพิ่มข้อมูลแล้ว");
              },
              child: Text("เพิ่มข้อมูล", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ]
        ,)
        ,)
      ),
    );
  }
}