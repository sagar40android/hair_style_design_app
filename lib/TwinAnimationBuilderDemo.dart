import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math'  ;
class TwinAnimationBuilderDemo extends StatefulWidget {
  @override
  _TwinAnimationBuilderDemoState createState() => _TwinAnimationBuilderDemoState();
}

class _TwinAnimationBuilderDemoState extends State<TwinAnimationBuilderDemo> {
  Color _color=Colors.orange;
  double  _endTwin=3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColorFilter"),
      ),
      body: Column(
        children: [
          TweenAnimationBuilder<Color>(
              duration: Duration(milliseconds: 500),

              tween: ColorTween(begin: Colors.white,end: _color),

              builder: (context,color,widget) {
                return  ColorFiltered(
                    colorFilter: ColorFilter.mode(color, BlendMode.modulate),
                child: Image(image: AssetImage("assets/model1.jpeg")),
                );
              },
          onEnd: (){
             Random random = new Random();
                setState(() {
                  // _color=Colors.green;
                  _color=  Color.fromARGB(
                      255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
                });
          },
          ),

          TweenAnimationBuilder(
              duration: Duration(seconds:1 ),
              tween: Tween(begin: 1.0,end: _endTwin),
              builder: (context,tweenValue,childWidget){
                return  Transform.rotate(
                    angle: tweenValue,
                  child: childWidget,
                );
              },
          child: Container(
            height: 200,
            width: 200,
            child: Image(image: AssetImage("assets/model1.jpeg")),
          ),
          onEnd: (){
            Random rnd = new Random();
            int min = 1, max = 4;
                setState(() {
                  _endTwin=rnd.nextInt(max ).toDouble();
                });
          },)
        ],
      ),
    );
  }
}
