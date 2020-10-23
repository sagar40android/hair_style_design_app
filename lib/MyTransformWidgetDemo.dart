import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTransformWidgetDemo extends StatefulWidget {
  @override
  _MyTransformWidgetDemoState createState() => _MyTransformWidgetDemoState();
}

class _MyTransformWidgetDemoState extends State<MyTransformWidgetDemo> {
  double sliderVal = 0;
  @override
  void initState() {
    super.initState();
    sliderVal = 0;
  }

  Slider slider() {
    return Slider(
        value: sliderVal,
        min: 0,
        max: 100,
        onChanged: (value) {
          setState(() {
            sliderVal = value;
            print("changed  value =>  ${value}");
          });
        });
  }

  Container rotate() {
    return Container(
      child: Transform.rotate(
        angle: sliderVal,
        origin: Offset(0.0, 0.0),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Container scale() {
    return Container(
      child: Transform.scale(
        scale: sliderVal == 0 ? 1 : sliderVal / 50,
        child: Container(
          height: 200,
          width: 200,
          color: Colors.greenAccent,
        ),
      ),
    );
  }

  Container translate() {
    return  Container(
      child: Transform.translate(
          offset: Offset(sliderVal,0.0),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.purpleAccent,
        ),
      ),
    );
  }

  Container skew(){
    return  Container(
child: Transform(
  transform: Matrix4.skewX(sliderVal/100),
  child: Container(
    height: 200,
    width: 200,
    color: Colors.amberAccent,
  ),
),
    );
  }
  
  Container threeD(){
    return  Container(
      child: Transform(
          transform: Matrix4.identity()
      ..setEntry(3, 3, sliderVal/100)
       ..rotateX(3.14/20.0) ,
       child: Container(
         height: 200,
         width: 200,
         color: Colors.blueGrey,
       ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                slider(),
                threeD(),

                rotate(),
                scale(),
                translate(),
                skew(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
