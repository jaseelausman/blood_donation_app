// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './Add.dart';

class Homepage extends StatelessWidget 
{
  
final List<String> bloodgroups=['A','A+','A-','B+','B-','AB+','AB-'];
 String? selectedbloodgroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(title: Text("Blood donation app"),
    backgroundColor: Colors.red,
    ),
    body:Column(children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(),label: Text("Name")),),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(),label: Text("Phone Number"),
          ),keyboardType: TextInputType.phone,maxLength: 10,),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: DropdownButtonFormField(decoration: InputDecoration(label: Text("Select Blood Group") ),
          items:bloodgroups.map((e)=>
          DropdownMenuItem(
            
            child: Text(e),
            value: e,
            )
        ).toList() ,
         onChanged: (val){
          selectedbloodgroup=val as String?;
        }),
      ),
      ElevatedButton(onPressed: (){}, child: Text(
        "Submit"),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
       // minimumSize: MaterialStateProperty.all(Size(5000, 50))
         
      ) )
      
      
    ],
    ),






    floatingActionButton:FloatingActionButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return AddUser();
      }));
    },
    backgroundColor: Colors.red,
    child: Icon(Icons.add),),

    );}}