import 'package:flutter/material.dart';
import 'package:userinterface1/firstScreen.dart';
import 'main.dart';
  String nameFromHome = "";
class finalpage extends StatelessWidget {
  // finalpage(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      // appBar: AppBar(
      //   title: Text("appbar"),
      // ),
      body:
      Center(

          child: Column(

            children: [
              SizedBox(height: 190),
              Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize:50 ),)),
              Center(child: Text(" $nameFromHome ",style: TextStyle(fontWeight: FontWeight.bold,fontSize:50 ),)),
              Text("Your score is ",style: TextStyle(fontWeight: FontWeight.bold,fontSize:50 ),),
              Text("$score",style: TextStyle(fontWeight: FontWeight.bold,fontSize:100 ),),
              ElevatedButton(
                child: Text("Retake the quizz"),
                onPressed: (){
                  score=0;
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (BuildContext context)=>firstScreen()));
                },),
            ],
          ),
      ),
    );
  }
}

