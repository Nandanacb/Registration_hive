import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Registrationpage extends StatefulWidget{
  late Box box;
  String? username;
  int? password;
  @override
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
  State<Registrationpage> createState()=> _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Username"),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 50,),
            Text("password"),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(border: OutlineInputBorder()),),

            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){

            }, child: Text("Register")),
          ],
        ),
      ),
    );
  }
}