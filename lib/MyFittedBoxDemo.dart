import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyFittedBoxDemo extends StatefulWidget {
  @override
  _MyFittedBoxDemoState createState() => _MyFittedBoxDemoState();
}

class _MyFittedBoxDemoState extends State<MyFittedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                    color: Colors.purpleAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.amberAccent,
                              alignment: Alignment.centerLeft,
                            ),
                            Text("dddddddddddddd")
                          ],
                        ),
                        
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                          child: Image(image: AssetImage("assets/model3.jpeg"),height: 200,),)
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
