import 'package:flutter/material.dart';
class AddUser extends StatefulWidget {
 
  @override
  State<AddUser> createState() => _AddUser();
}

class _AddUser extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(title: Text("Add Doanrs"),
     backgroundColor: Colors.red,
    ),
   );
  }
}