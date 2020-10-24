
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarViewDemo extends StatefulWidget {
  @override
  _TabBarViewDemoState createState() => _TabBarViewDemoState();
}

class _TabBarViewDemoState extends State<TabBarViewDemo>  with  SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController  = TabController(length: 3, initialIndex: 0,vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.directions_car),),
                Tab(icon: Icon(Icons.directions_transit),),
                Tab(icon: Icon(Icons.directions_bike),),
              ]),
        ),
        body: TabBarView(
            controller: _tabController,
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ]),
      ),
    );
  }
}
