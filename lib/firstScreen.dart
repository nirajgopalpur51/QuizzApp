import 'package:flutter/material.dart';
import 'package:userinterface1/finalpage.dart';
import 'package:userinterface1/main.dart';
import 'splashScreen.dart';
import 'finalpage.dart';
class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Container(
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter your name",style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w700,color: Colors.blueAccent),),
               SizedBox(height: 10),
               TextField(
                  controller: nameController,
                 onChanged: (val){
                   nameFromHome = val;
                 },
                ),
                SizedBox(height: 35),
                ElevatedButton(onPressed: (
                    ){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => homepage()));
                }, child: Text("go to quiz"),)
           ]),
          ),
        ),
      ),
    );
  }
}


