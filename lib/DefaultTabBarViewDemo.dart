import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math'  ;

class DefaultTabBarViewDemo extends StatefulWidget {
  @override
  _DefaultTabBarViewDemoState createState() => _DefaultTabBarViewDemoState();
}

class _DefaultTabBarViewDemoState extends State<DefaultTabBarViewDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                onTap: (int index){print("click index == $index");},
                tabs: [
                Tab(icon: Icon(Icons.directions_car),),
                Tab(icon: Icon(Icons.directions_transit),),
                Tab(icon: Icon(Icons.directions_bike),),
              ],),
            ),
            body: TabBarView(children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ]),
            
          )),
    );
  }
}
