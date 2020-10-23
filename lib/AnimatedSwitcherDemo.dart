import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
  @override
  _AnimatedSwitcherDemoState createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  bool  _isVisible =true;
  int _elapsedTime=0;
  int _countTime=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body:

      Center(
        child:

          AnimatedSwitcher(
              duration: Duration(milliseconds: 2000),
              transitionBuilder: (childWidget,animation){

                return  ScaleTransition(
                    scale: animation,
                  child: childWidget,
                  alignment: Alignment.center,

                );

                // return  SizeTransition(
                //   // axis: Axis.vertical,
                //     axisAlignment: 1.0,
                //     sizeFactor: animation,
                // child: childWidget,);


              },
              child: Text( "countTime ${_countTime}",key: ValueKey<int>(_countTime),textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
          )

        // AnimatedSwitcher(
        //   duration: Duration(seconds: 1),
        //   reverseDuration: Duration(seconds: 3),
        //   child: _isVisible ?
        //   Container(key: UniqueKey(),color: Colors.red,width: 200,height: 200,)  :
        //       Container(key: UniqueKey(),color: Colors.greenAccent,width: 300,height: 300,)
        //
        // ),
        //



      )
      ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.repeat),
        onPressed: (){

          setState(() {
            // final cd  = CountdownTimer()
            _countTime  +=1;
          });

          // setState(() {
          //   _isVisible  =  !_isVisible;
          // });


        },
      ),
    );
  }
}
