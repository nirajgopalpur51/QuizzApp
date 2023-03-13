import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userinterface1/firstScreen.dart';
import 'main.dart';
import 'second page.dart';
import 'third page.dart';
import 'finalpage.dart';
class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => firstScreen()) );
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
     Container(
       decoration: const BoxDecoration(
         image: DecorationImage(
           image: AssetImage(
             'asessts/images/quizz2.jpg'
           ),
           fit: BoxFit.cover
         ),
       ),
       // color: Colors.blue,
         child: Text("Quizzes",style: TextStyle(
           fontSize: 34,fontWeight: FontWeight.w700,color: Colors.white
         ),),
     ),
   );
  }
}