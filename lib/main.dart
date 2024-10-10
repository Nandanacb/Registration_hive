import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_registration_screen/loginpage.dart';
import 'package:hive_registration_screen/registrationpage.dart';

void main() async{
  await Hive.initFlutter();
  var box=await Hive.openBox('mysterybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registrationpage(),
    );
  }
}
     