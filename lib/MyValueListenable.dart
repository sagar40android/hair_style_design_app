import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dart:math'  show  pi;

class MyValueListenable extends StatefulWidget {
  @override
  _MyValueListenableState createState() => _MyValueListenableState();
}

class _MyValueListenableState extends State<MyValueListenable> {

  var root  = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("ImageStylingDemo"),
      ),

      body: Center(
        child: ValueListenableBuilder(
          valueListenable: root,
          // child: getContainer(),
          builder: (context,value,child){
            return  Transform.rotate(
                angle: (value * (pi/100)),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
            );
          },

        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon((Icons.repeat)),
        onPressed: (){
          root.value+=30;
          if(root.value  > 180){
            root.value  = 0;
          }
        },
        tooltip: "rotate  Screen",
      ),
    );
  }

  Widget  getContainer(){
    return  Container(
      height: 200,
      width: 200,
      color: Colors.greenAccent,
    );
  }
}
