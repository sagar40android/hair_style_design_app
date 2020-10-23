import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherDemo_2 extends StatefulWidget {
  @override
  _AnimatedSwitcherDemo_2State createState() => _AnimatedSwitcherDemo_2State();
}

class _AnimatedSwitcherDemo_2State extends State<AnimatedSwitcherDemo_2> {
  int _selected = 0;

  @override
  void initState() {
    super.initState();
    _selected = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
           AnimatedSwitcher(
               duration: Duration(milliseconds: 500),
               // duration: Duration(seconds: 3),
             transitionBuilder: (childWidget,animation){
                 return SlideTransition(
                     position: Tween<Offset>(begin: Offset(1.0, 0.0),end: Offset(0.0,0.0)).animate(animation),
                   child: childWidget,
                 );
             },
             child: _selected ==0 ? _buildBody()  : (_selected  ==1 ?_buildCorrect():_buildInCorrect()),
           ),

           Container(
               child:  _selected !=0 ?
               LimitedBox(
                 maxWidth: 100,
                 maxHeight: 100,
                 child: RaisedButton(
                   child: Text("Play Again"),
                   onPressed: () {
                     setState(() {
                       _selected = 0;
                     });
                   },
                 ),
               ) :  SizedBox()
           )

          ],
        ),
      ),
    );
  }

  Widget  _buildBody(){
    return  Column(

      children: [
        Text(
          "Flutter's stable version was released on December 5, 2018?",
          style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.bold),
        ),
        Row(
          children:[
            FlatButton(
              onPressed: () {
                setState(() {
                  _selected = 1;

                });
              },
              child: Text("True"),
              color: Colors.green,
            ),
            SizedBox(width: 10,),
            FlatButton(
              onPressed: () {
                setState(() {
                  _selected = 2;
                });
              },
              child: Text("False"),
              color: Colors.redAccent,
            ),
          ] ,
        ),

         ],
    );
  }

  Widget _buildCorrect() {
     return IconButton(
        icon: Icon(Icons.check,size: 50,),

        onPressed: () {
          print("correct  !!!");
          setState(() {
            _selected = 0;

          });
        });
  }

  Widget _buildInCorrect() {
    return IconButton(
        icon: Icon(Icons.close,size: 50,),

        onPressed: () {
          print("Incorrect  !!!");
          setState(() {
            _selected = 0;
          });
        });
  }
}
