import 'package:flutter/material.dart';
import 'package:userinterface1/firstScreen.dart';
import 'package:userinterface1/second%20page.dart';
import 'package:userinterface1/splashScreen.dart';
// import 'fluttert';
int score=0;
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashScreen(),
  ));
}

class homepage extends StatefulWidget {
  var nameController = TextEditingController();
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(child: Text("Fantasy Quiz #156", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
          SizedBox(height:40),
          Text("What is the first pogramming language",
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
                    Text(" NIFTY50 ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    Text(" 17,356, "),
                    Text(" -0.31% ",style: TextStyle(color: Colors.red),),
                  ],
                ),
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return Container(
                      child: AlertDialog(
                        title: Text("Wrong"),
                        actions: [
                          TextButton(
                              onPressed:(){
                                Navigator.pop(context);
                              },
                              child: Text("Retry"),
                              ),
                        ],
                      ),
                    );
                  });
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
                    Text(" Plankalkül ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
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
                          // TextButton(
                          //   onPressed:(){
                          //
                          //     Navigator.pop(context);
                          //   },
                          //   child: Text("Retry"),
                          // ),
                          TextButton(
                            onPressed:(){
                              score++;
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context)=>secondpage()));
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
                    Text(" NIFTYBANK ", style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),),
                    Text(" 17,356, "),
                    Text(" +2.12% ", style: TextStyle(color: Colors.red),),
                  ],
                ),
                onPressed:() {
                  showDialog(context: context, builder: (context){
                    return Container(
                      child: AlertDialog(
                        title: Text("Wrong"),
                        actions: [
                          TextButton(
                            onPressed:(){
                              Navigator.pop(context);
                            },
                            child: Text("Retry"),
                          ),
                        ],
                      ),
                    );
                  });
                }),
            ),
          ),
        ],
      ),
    );
  }
}

