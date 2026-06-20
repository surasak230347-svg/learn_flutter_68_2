import 'package:flutter/material.dart';
import 'package:learn_flutter_68_2/model/person.dart';
import 'package:learn_flutter_68_2/main.dart';



class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 0;
  Job _job = Job.developer;
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
        // child: Column(
        //   children: [
        //     TextFormField(
        //       decoration: InputDecoration(
        //         labelText: "Name",
        //       ),
        //       onChanged: (value) {
        //         _name = value;
        //       },
        //     ),
        //     TextFormField(
        //       decoration: InputDecoration(
        //         labelText: "Age", keyboardType: TextInputType.number,
        //       ),
        //       onChanged: (value) {
        //         _age = int.tryParse(value) ?? 0;
        //       },
        //     ),
        //     DropdownButtonFormField(
        //       decoration: InputDecoration(
        //         labelText: "  Job",
        //       ),
        //       items: Job.values.map((key) {
        //          final job = key;
        //         return DropdownMenuItem(
        //           value: key,
        //           child: Text(key.title),
        //         );
        //       }).toList(),
        //       onChanged: (value) {
        //         _job = value ?? Job.developer;
        //         print("Selected job: ${value?.title}");
          
        //       },   
        //     ),
        //     SizedBox(height: 20),
        //     FilledButton(
        //       style : FilledButton.styleFrom(
        //         backgroundColor: Colors.pinkAccent,
        //         foregroundColor: Colors.white,
        //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //       ),
        //       onPressed: () {
        //         if (_formKey.currentState!.validate()) {
        //           print("เพิ่มข้อมูลแล้ว");
        //         }
        //       },
        //       child: Text("เพิ่มข้อมูล", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        //     ),
        //   ]
        // ,)
        child: Form(
        key: _formKey,
        child: Column(
          children: [

          TextFormField(
            decoration: InputDecoration(
              labelText: "Name",

            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'กรุณากรอกชื่อ';
              }
              if (int.tryParse(value) != null) {
                return 'กรุณากรอกชื่อเป็นตัวอักษร';
              }
              return null;
            },

            onSaved: (value) {
              _age = int.tryParse(value ?? '') ?? 20;
            },
          ),  
          
          DropdownButtonFormField<Job>(
            decoration: InputDecoration(labelText: "Job"),
            items: Job.values.map((job) {
              return DropdownMenuItem<Job>(
                value: job,
                child: Text(job.title),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _job = value ?? Job.developer;
      
              });
            },  
          ),


            SizedBox(height: 20),
            FilledButton(

              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print("Name: $_name, Age: $_age, Job: ${_job.title}");
                }
              },
                   setState(() {
                     people.add(Person(name: _name, age: _age, job: _job)); 
                    }),
      
                    formKey.currentState.reset();
                    Navigator.push(
                      context,

                    MateriaPageRoute(builder: (context) => MyApp()),
                    );
              child: Text("เพิ่มข้อมูล", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
              

                    )


            },

          ),
        ]

        ),


      ),


    );  }
} 


