import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurstomPainterDemo extends StatefulWidget {
  @override
  _MyCurstomPainterDemoState createState() => _MyCurstomPainterDemoState();
}

class _MyCurstomPainterDemoState extends State<MyCurstomPainterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
      ),
      body:
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: LayoutBuilder(builder: (context,buildConstraint){
          return  Container(
            color: Colors.amberAccent,
            width: buildConstraint.widthConstraints().maxWidth,
            height: buildConstraint.heightConstraints().maxHeight,
            child: CustomPaint(painter: FaceOutlinePainter(),),
          );
        })
      ),
    );
  }
}

class FaceOutlinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint=  Paint();
    paint.style=PaintingStyle.stroke;
    paint.color=Colors.blue;
    paint.strokeWidth=4;

    canvas.drawRect(Rect.fromLTWH(20, 40, 100, 200), paint);
    // canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(50, 40, 100, 200), Radius.circular(20)), paint);
    canvas.drawOval(Rect.fromLTWH(size.width-120, 40, 100, 200), paint);
    
    var path= Path();
    path.moveTo(size.width  *0.8,size.height *0.6);
    path.arcToPoint(Offset(size.width*0.2, size.height *0.6),clockwise: true);
    path.arcToPoint(Offset(size.width  *0.8,size.height *0.6),clockwise: false,radius: Radius.circular(40));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return false;
  }


}
