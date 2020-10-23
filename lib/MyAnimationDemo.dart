import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimationDemo extends StatefulWidget {
  @override
  _MyAnimationDemoState createState() => _MyAnimationDemoState();
}

class _MyAnimationDemoState extends State<MyAnimationDemo> {
  var _height = 40.0;
  var _alignment = Alignment.bottomCenter;
  var list = [
    Colors.lightGreen,
    Colors.redAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
        // backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 5),
                width: 60,
                height: _height,
                color: Color(0xff14ff65),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _height = 320.0;
                  });
                },
                child: Center(
                  child: Text("ClickMe"),
                ),
                textColor: Colors.white,
                color: Colors.purple,
              ),
              AnimatedContainer(
                // width: MediaQuery.,
                height: 400,
                duration: Duration(seconds: 2),
                color: Colors.redAccent,
                alignment: _alignment,
                child: Icon(Icons.airplanemode_active,size: 40,color: Colors.blueAccent,),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 2),
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:list
                  ),
                ),
              )
           
            ],
          ),
        ),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            setState(() {
              _alignment  = Alignment.topCenter;
              list=[
                Colors.blueAccent,
                Colors.purpleAccent
              ];
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
    );
  }
}
