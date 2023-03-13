import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'finalpage.dart';
import 'main.dart';
class fifthpage extends StatefulWidget {
  const fifthpage({Key? key}) : super(key: key);

  @override
  State<fifthpage> createState() => _fifthpageState();
}

class _fifthpageState extends State<fifthpage> {
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
          Center(child: Text("Fantasy Quiz #160", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
          SizedBox(height:40),
          Text("Does java supports multiple inheritance",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 20)),
          SizedBox(height: 30),
          Center(
            child: Container(
              height: 50,
              width: 230,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10), color: Colors.white),
              child: TextButton(
                child: Row(
                  children: [
                    Text("(A) ",),
                    Text(" Yes ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    // Text(" 17,356, "),
                    Text(" -0.31% ",style: TextStyle(color: Colors.red),),
                  ],
                ),
                onPressed: (){
                  Fluttertoast.showToast(msg: "Wrong",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.lightGreenAccent,
                      fontSize: 15
                  );
                },
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
                      Text(" No  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
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
                                    builder: (BuildContext context)=>finalpage()));
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
              child: TextButton(
                  child: Row(
                    children: [
                      Text("(C) "),
                      Text(" Nothing ", style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),),
                      Text(" 17,356, "),
                      Text(" +2.12% ", style: TextStyle(color: Colors.red),),
                    ],
                  ),
                onPressed: (){
                    Fluttertoast.showToast(msg: "Wrong",
                    toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.lightGreenAccent,
                      fontSize: 15
                    );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
