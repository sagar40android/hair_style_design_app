import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositionAnimationDemo extends StatefulWidget {
  @override
  _PositionAnimationDemoState createState() => _PositionAnimationDemoState();
}

class _PositionAnimationDemoState extends State<PositionAnimationDemo> {
  double posLeft = 0.0;
  double posRight = 0.0;
  double posTop = 0.0;
  double posBottom = 0.0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("PositionAnimation"),
      ),
      body: Stack(
        children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
          AnimatedPositioned(
            left: posLeft,
            right: posRight,
            top: posTop,
            bottom: posBottom,
            duration: Duration(seconds: 2),
            child: Center(
              child: Image(
                image: AssetImage("assets/model1.jpeg"),
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 180,
              bottom: 20,
              // child: IconButton(icon: Icon(Icons.arrow_drop_down,size:50,),color: Colors.purpleAccent, onPressed: (){}),
              child: FloatingActionButton(
                child: Icon(Icons.arrow_drop_down,size:50,),
                onPressed: (){
                  _changePositionOfImage("down");
                },
                  backgroundColor: Colors.purpleAccent,
              ),
          ),
          Positioned(
            left: 180,
            bottom: 150,
            // child: IconButton(icon: Icon(Icons.arrow_drop_down,size:50,),color: Colors.purpleAccent, onPressed: (){}),
            child: FloatingActionButton(
              child: Icon(Icons.arrow_drop_up,size:50,),
              onPressed: (){
                _changePositionOfImage("up");
              },
              backgroundColor: Colors.purpleAccent,
            ),
          ),

          Positioned(
            left: 80,
            bottom: 80,
            // child: IconButton(icon: Icon(Icons.arrow_drop_down,size:50,),color: Colors.purpleAccent, onPressed: (){}),
            child: FloatingActionButton(
              child: Icon(Icons.arrow_left,size:50,),
              onPressed: (){
                _changePositionOfImage("left");
              },
              backgroundColor: Colors.purpleAccent,
            ),
          ),

          Positioned(
            right: 80,
            bottom: 80,
            // child: IconButton(icon: Icon(Icons.arrow_drop_down,size:50,),color: Colors.purpleAccent, onPressed: (){}),
            child: FloatingActionButton(
              child: Icon(Icons.arrow_right,size:50,),
              onPressed: (){
                _changePositionOfImage("right");
              },
              backgroundColor: Colors.purpleAccent,
            ),
          ),

          Positioned(
            left: 180,
            bottom: 90,
            // child: IconButton(icon: Icon(Icons.arrow_drop_down,size:50,),color: Colors.purpleAccent, onPressed: (){}),
            child: FloatingActionButton(
              child: Icon(Icons.pause,size:40,),
              onPressed: (){
                _changePositionOfImage("stop");
              },
              backgroundColor: Colors.purpleAccent,
            ),
          ),
        ],
      ),
    );
  }

  _changePositionOfImage(String position) {
   setState(() {

     switch(  position)
     {
       case  "up":
         posLeft = 0.0;
         posRight = 0.0;
         posTop = 0.0;
         posBottom = 100.0;
         break;

       case  "down":
         posLeft = 0.0;
         posRight = 0.0;
         posTop = 100.0;
         posBottom = 0.0;
         break;

       case  "right":
         posLeft = 100.0;
         posRight = 0.0;
         posTop = 0.0;
         posBottom = 0.0;
         break;

       case  "left":
         posLeft = 0.0;
         posRight = 100.0;
         posTop = 0.0;
         posBottom = 0.0;
         break;

       case "stop":
         posLeft = 0.0;
         posRight = 0.0;
         posTop = 0.0;
         posBottom = 0.0;
         break;


     }

   });
  }
}
