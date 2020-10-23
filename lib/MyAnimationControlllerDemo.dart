import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyAnimationController extends StatefulWidget {
  @override
  _MyAnimationControllerState createState() => _MyAnimationControllerState();
}

class _MyAnimationControllerState extends State<MyAnimationController> with TickerProviderStateMixin{
    AnimationController _animationController;
  Animation _sizeAnimation;
  Animation _colorAnimation;
  Animation rotationAnimation;

  @override
  void initState() {
    super.initState();

    _animationController  = new AnimationController(vsync: this,duration: Duration(seconds: 3));
    // _sizeAnimation  = Tween(begin:100.0,end: 300.0).animate(_animationController);
    // _sizeAnimation  = Tween(begin:100.0,end: 300.0).animate(CurvedAnimation(parent: _animationController,curve: Interval(0.0, 0.5)));
    // _sizeAnimation  = Tween(begin:100.0,end: 10.0).chain(
    //   TweenSequence(
    //     [TweenSequenceItem(tween: Tween(begin: 10.0,end: 100.0),weight: 1),
    //     TweenSequenceItem(tween: Tween(begin: 100.0,end: 50.0),weight: 1),
    //     TweenSequenceItem(tween: Tween(begin: 50.0,end: 75.0),weight: 1),
    //     TweenSequenceItem(tween: Tween(begin: 75.0,end: 10.0),weight: 1),
    //     ]
    //   ),
    // ).animate(_animationController);

    rotationAnimation  = Tween(begin: 0.0,end:3.14).animate(_animationController);

    _colorAnimation  = ColorTween(begin: Colors.purpleAccent,end: Colors.blue).animate(_animationController);
    // _colorAnimation = ColorTween(begin:Colors.purpleAccent,end: Colors.blue ).animate(CurvedAnimation(parent: _animationController,curve: Interval(0.5, 1.0)));


    // _animationController.addListener(() { setState(() {
    //
    // });
    // });

    //  repeat  animation
    _animationController.repeat();
    // _animationController.reverse();

    //  only  one time  animated
    // _animationController.forward();

    // _animationController.fling();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              // Transform.rotate(angle: rotationAnimation.value,
              //   child: Container(
              //     height: 200,
              //     width: 200,
              //     color: _colorAnimation.value,
              //   ),),

             AnimatedBuilder(
                 animation: _animationController,
                 builder: (context,child){
                   return Transform.rotate(angle: rotationAnimation.value,
                   child: Container(
                     height: 200,
                     width: 200,
                     color: _colorAnimation.value,
                   ),);
                 })
            ],
          )
        ),
      ),
    );

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}




// class MyAnimationControlllerDemo extends StatefulWidget {
//   @override
//   _MyAnimationControlllerDemoState createState() => _MyAnimationControlllerDemoState();
// }
//
// class _MyAnimationControlllerDemoState extends State<MyAnimationControlllerDemo>  with  TickerProviderStateMixin   {
//   AnimationController _animationController;
//   Animation _sizeAnimation;
//   Animation _colorAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController  = new AnimationController(vsync: this,duration: Duration(seconds: 3));
//
//     // _sizeAnimation=Tween(begin: 100,end: 300).animate(CurvedAnimation(parent: _animationController,curve: Interval(0.0,0.5 )));
//     _sizeAnimation=Tween(begin: 100,end: 300).animate(_animationController);
//     // _colorAnimation = ColorTween(begin: Colors.red,end: Colors.blue).animate(CurvedAnimation(parent: _animationController,curve: Interval(0.5, 1.0)));
//     _colorAnimation = ColorTween(begin: Colors.red,end: Colors.blue).animate(_animationController);
//
//     _animationController.addListener(() {
//       setState(() {
//
//       });
//     });
//
//     _animationController.repeat();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ImageStylingDemo"),
//         // backgroundColor: Colors.amberAccent,
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//
//               Container(
//                 height: _sizeAnimation.value,
//                 width: _sizeAnimation.value,
//                 color: _colorAnimation.value,
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
