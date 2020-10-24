import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  @override
  _ListWheelScrollViewDemoState createState() => _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatioDemo"),
        // backgroundColor: Colors.amberAccent,
      ),
      body: ListWheelScrollView(

          itemExtent: 100,
          clipBehavior: Clip.hardEdge,
          diameterRatio: 1,
          offAxisFraction: -0.4,
          // squeeze: 0.8,
          children:[
            for(var i=0;i<50;i++)
              InkWell(
                onTap: (){
                  print("Index  =>  $i");
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(
                      255, random.nextInt(255), random.nextInt(255), random.nextInt(255)),
                ),
              )
          ]
      ),
    );
  }
}
