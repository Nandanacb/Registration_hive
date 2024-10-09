import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState()=> _LoginpageState();
}

class  _LoginpageState extends State<Loginpage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page Example"),
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
            ElevatedButton(onPressed: (){}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}