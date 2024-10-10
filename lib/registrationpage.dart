import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_registration_screen/loginpage.dart';

class Registrationpage extends StatefulWidget{
 
  @override
  State<Registrationpage> createState()=> _RegistrationpageState();
}
class _RegistrationpageState extends State<Registrationpage>{
 

  late Box box;
   TextEditingController usernameController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  
  @override
  void initState(){
    super.initState();
    box=Hive.box('mysterybox');
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration page example"),
      ),
      body: Center(child: Column(
        children: [
          SizedBox(height: 30,),
          Text("Username"),
          SizedBox(height: 20),
          TextField(
            controller:usernameController,
            decoration: InputDecoration(border: OutlineInputBorder()),),
           SizedBox(height: 20),
            Text("Password"),
            SizedBox(height: 20),
           TextField(
            controller: passwordController,
            decoration: InputDecoration(border: OutlineInputBorder()),),
           SizedBox(height: 50),
           ElevatedButton(onPressed: (){
            setState(() {
              box.put('username', usernameController.text);
               box.put('password', usernameController.text);
               

            });
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginpage()));
            
           }, child: Text("Register")),
        ],
      ),),
    );
  }
}