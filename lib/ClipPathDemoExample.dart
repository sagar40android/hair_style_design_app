import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipPathDemoExample extends StatefulWidget {
  @override
  _ClipPathDemoExampleState createState() => _ClipPathDemoExampleState();
}

class _ClipPathDemoExampleState extends State<ClipPathDemoExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
        // backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage("assets/model1.jpeg"),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10,),
              ClipPath(
                clipper: MyClipper(),
                child: Image(
                  image: AssetImage("assets/model1.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),

              ClipPath(
                clipper: NewMyClipper(),
                child: Image(image: AssetImage("assets/model1.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,),
              ),

              ClipPath(
                clipper: TriangleClip(),
                child: Image(image: AssetImage("assets/model1.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,),
              ),

              ClipPath(
                clipper: MyQuadraticBezierDemo(),
                child: Image(image: AssetImage("assets/model1.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,),
              ),

              ClipPath(
                clipper: MyCubicToDemo(),
                child: Image(image: AssetImage("assets/model1.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,),
              ),

              ClipPath(
                clipper: MyArcToPointDemo(),
                child: Image(image: AssetImage("assets/model1.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=new  Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return  path;
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return  false;
    // throw UnimplementedError();
  }


}
class  NewMyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // throw UnimplementedError();
    var path=Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return  path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // throw UnimplementedError();
    return  false;
  }

}


class TriangleClip  extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path=new  Path();
    path.moveTo(size.width/2, 0.0);
    path.lineTo( 0.0,size.height);
    path.lineTo(size.width, size.height);
    path.close();
    // throw UnimplementedError();

    return  path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return  false;
    // throw UnimplementedError();
  }

}

class MyQuadraticBezierDemo extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    var controlPoint  = Offset(size.width/2, size.height/2);
    var endPoint  = Offset(size.width, size.height);

    var path=Path();
    path.moveTo(size.width/2, 0.0);
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.close();
    return  path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // throw UnimplementedError();
    return  false;
  }

}


class MyCubicToDemo extends CustomClipper<Path>{


  @override
  Path getClip(Size size) {
    var controlPoint_1  = Offset(50, size.height-100);
    var controlPoint_2  = Offset(size.width-50, size.height);
    var endPoint  = Offset(size.width, size.height-50);

    final path=new  Path();
    path.moveTo(size.width/2, 0.0);
    path.lineTo( 0.0,size.height  -50);
    path.cubicTo(controlPoint_1.dx, controlPoint_1.dy, controlPoint_2.dx, controlPoint_2.dy, endPoint.dx, endPoint.dy);
    path.close();
    // throw UnimplementedError();

    return  path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return  false;
    // throw UnimplementedError();
  }

}

class MyArcToPointDemo  extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    var radius  = 50.0;
    final path=new  Path();
    path.moveTo(radius, 0);
    path.lineTo(size.width-radius, 0);
    path.arcToPoint(Offset(size.width, radius));
    path.lineTo(size.width, size.height-radius);
    path.arcToPoint(Offset(size.width-radius, size.height),clockwise: true,radius: Radius.circular(radius));
    path.lineTo(radius, size.height);
    path.arcToPoint(Offset(0.0, size.height-radius),clockwise: false );
    path.lineTo(0.0, radius);
    path.arcToPoint(Offset(radius, 0),radius: Radius.elliptical(40, 20));
    path.close();
    return  path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return  false;


  }

}


