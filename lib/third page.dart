import 'package:flutter/material.dart';
import 'package:userinterface1/finalpage.dart';
import 'package:userinterface1/fourth_page.dart';
import 'main.dart';
class thirdpage extends StatefulWidget {
  const thirdpage({Key? key}) : super(key: key);
  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("appbar"),
      // ),
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(child: Text("Fantasy Quiz #158", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
          SizedBox(height:40),
          Text("Who is the father of python",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 20)),
          SizedBox(height: 30),
          Center(
            child: Container(
              height: 50,
              width: 230,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10), color: Colors.white),
              child: Builder(
                builder: (context) {
                  return TextButton(
                    child: Row(
                      children: [
                        Text("(A) ",),
                        Text(" James Gosling ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        // Text(" 17,356, "),
                        Text(" -0.31% ",style: TextStyle(color: Colors.red),),
                      ],
                    ),
                    onPressed: (){
                      final message=SnackBar(content: Text("wrong", style:
                      TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                        duration: Duration(seconds: 3),
                        action: SnackBarAction(
                          label: "Done",
                          onPressed: (){

                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(message);
                    },
                  );
                }
              ),

            ),
          ),

          SizedBox(height: 30),
          Center(
            child: Container(
              height: 50,
              width: 240,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10), color: Colors.white),
              child: TextButton(
                  child: Row(
                    children: [
                      Text("(B) "),
                      Text(" Guido van ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                      Text(" 56,225, "),
                      Text(" -0.31% ",style: TextStyle(color: Colors.red),),
                    ],
                  ),
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return Container(
                        child: AlertDialog(
                          title: Text("Correct"),
                          actions: [
                           TextButton(
                            onPressed:(){
                                score++;
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context)=>fouthpage()));
                              },
                              child: Text("Next"),
                            ),

                          ],
                        ),
                      );
                    });
                  }
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              height: 50,
              width: 230,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10),
                  color: Colors.white),
              child: Builder(
                builder: (context) {
                  return TextButton(
                      child: Row(
                        children: [
                          Text("(C) "),
                          Text(" Noone ", style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),),
                          Text(" 17,356, "),
                          Text(" +2.12% ", style: TextStyle(color: Colors.red),),
                        ],
                      ),
                    onPressed: (){
                      final message=SnackBar(content: Text("wrong", style:
                      TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                        duration: Duration(seconds: 3),
                        action: SnackBarAction(
                          label: "Done",
                          onPressed: (){

                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(message);
                    },);
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
