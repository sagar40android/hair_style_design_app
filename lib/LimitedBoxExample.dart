import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LimitedBoxExample extends StatefulWidget {
  @override
  _LimitedBoxExampleState createState() => _LimitedBoxExampleState();
}

class _LimitedBoxExampleState extends State<LimitedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        children: [
          for(var i=0;i<=20;i++)
          LimitedBox(
            maxHeight: 100,
            maxWidth: 50,
            child: Container(
              color: _getColor(),
            ),
          )
        ],
      ),
    );
  }

    _getColor(){
    Random  random=new  Random();
    return   Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}
