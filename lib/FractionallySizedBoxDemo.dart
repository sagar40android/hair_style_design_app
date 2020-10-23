import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatefulWidget {
  @override
  _FractionallySizedBoxDemoState createState() => _FractionallySizedBoxDemoState();
}

class _FractionallySizedBoxDemoState extends State<FractionallySizedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBoxDemo"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                  color: Colors.purple,) ,
            ),
          ),
          Divider(
            height: 11.0,
          ),
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: FractionallySizedBox(
              heightFactor: 0.5,

              child: Container(
                color: Colors.purple,) ,
            ),
          ),
          Divider(
            height: 11.0,
          ),
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Container(
                color: Colors.purple,) ,
            ),
          ),
          Divider(
            height: 11.0,
          ),
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.5,
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.purple,) ,
            ),
          ),
          Divider(
            height: 11.0,
          ),
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.5,
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.purple,) ,
            ),
          ),
        ],
      ),
    );
  }
}
