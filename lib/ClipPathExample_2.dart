import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipPathExample_2 extends StatefulWidget {
  @override
  _ClipPathExample_2State createState() => _ClipPathExample_2State();
}

class _ClipPathExample_2State extends State<ClipPathExample_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipPath(),
          child: Container(
            height: MediaQuery.of(context).size.height  * 0.6,
            width: MediaQuery.of(context).size.width  * 0.8,
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }
}

class MyClipPath  extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var quadraticRadius = 50.0;
   var  path= Path();
   path.moveTo(0.0, size.height * 0.33);
   path.lineTo(0.0, size.height-quadraticRadius);
   path.quadraticBezierTo(0.0, size.height, quadraticRadius, size.height);
   path.lineTo(size.width-quadraticRadius, size.height);
   path.quadraticBezierTo(size.width, size.height, size.width, size.height-quadraticRadius);
   path.lineTo(size.width,quadraticRadius);
   path.arcToPoint(Offset( size.width-quadraticRadius, quadraticRadius),radius: Radius.circular(50),clockwise: false);
   // path.quadraticBezierTo(size.width, 0.0, size.width-quadraticRadius, quadraticRadius);
   path.close();
   return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return  false;
  }

}
