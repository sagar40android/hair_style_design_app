import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationCrossFadeDemo extends StatefulWidget {
  @override
  _AnimationCrossFadeDemoState createState() => _AnimationCrossFadeDemoState();
}

class _AnimationCrossFadeDemoState extends State<AnimationCrossFadeDemo> {
  int _selected = 0;
  bool  _crossFadeState=true;

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
      body: Column(
        children: [

          AnimatedCrossFade(
            firstCurve: Curves.easeOut,
            secondCurve: Curves.easeOut,
              firstChild: _buildBody(),
              secondChild: _selected==1 ?  _buildCorrect()  :  (_selected==2  ? _buildInCorrect() : _buildBody()) ,
              crossFadeState: _crossFadeState ==true  ? CrossFadeState.showFirst :CrossFadeState.showSecond,
              duration: Duration(seconds: 2)
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
                      _crossFadeState =true;
                    });
                  },
                ),
              ) :  SizedBox()
          )

        ],
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
                  _crossFadeState =false;

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
                  _crossFadeState =false;
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
