import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hair_style_design_app/AnimatedListDemo.dart';

class AspectRatioDemo extends StatefulWidget {
  @override
  _AspectRatioDemoState createState() => _AspectRatioDemoState();
}

class _AspectRatioDemoState extends State<AspectRatioDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatioDemo"),),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: AspectRatio(aspectRatio: 3/2,
        child: Container(
          color: Colors.greenAccent,
          // child: Image.network('',fit: BoxFit.cover,),
          // child:FadeInImage.assetNetwork(placeholder: "", image: "www.rd.com/wp-content/uploads/2017/07/01-birth-month-If-You-Were-Born-In-Summer-This-Is-What-We-Know-About-You_644740429-icemanphotos.jpg"),
          child: FlutterLogo(),
        ),),
      ),
    );
  }
}


// Container(
// color: Colors.greenAccent,
// // child: Image.network('',fit: BoxFit.cover,),
// // child:FadeInImage.assetNetwork(placeholder: "", image: "www.rd.com/wp-content/uploads/2017/07/01-birth-month-If-You-Were-Born-In-Summer-This-Is-What-We-Know-About-You_644740429-icemanphotos.jpg"),
// child: FlutterLogo(),
// ),),
