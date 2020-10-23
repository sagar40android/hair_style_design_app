import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "dart:math" show pi;

class MyCustomPainterDemo_2 extends StatefulWidget {
  @override
  _MyCustomPainterDemo_2State createState() => _MyCustomPainterDemo_2State();
}

class _MyCustomPainterDemo_2State extends State<MyCustomPainterDemo_2> {

  Orientation _orientation;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    _orientation  = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
        // backgroundColor: Colors.amberAccent,
      ),
      body: _orientation  ==  Orientation.landscape ? LandScapWidgetScreen()  : PortraitWidgetScreen(),
    );
  }

  Widget  LandScapWidgetScreen(){
    return LayoutBuilder(builder: (context,buildconstraint){
      return  Container(
        height: buildconstraint.heightConstraints().maxHeight,
        width: buildconstraint.widthConstraints().maxWidth,
        child: CustomPaint(painter: LogoPainterEscape(),),
      );
    });
  }



  Widget  PortraitWidgetScreen(){
    return  Center(child: Text("PortraitWidgetScreen"));
  }
}

class LogoPainterEscape extends CustomPainter{
  Paint _paint;
  Path  _path;

  LogoPainterEscape(){
    _paint  = Paint()
    ..color=Colors.blueAccent
    ..strokeCap=StrokeCap.round
    ..strokeWidth =  10;
  }

  @override
  void paint(Canvas canvas, Size size) {
     canvas.drawLine(Offset(25,100), Offset(25,300), _paint);
     canvas.drawLine(Offset(100,100), Offset(100,300), _paint);
     canvas.drawLine(Offset(1.0,150), Offset(150,150), _paint);
     canvas.drawLine(Offset(1.0,250), Offset(150,250), _paint);

     _paint.style = PaintingStyle.fill;
     _paint.color = Colors.amberAccent;
     canvas.drawRect(Rect.fromLTWH(200, 100, 100, 200), _paint);

     _paint.color = Colors.deepOrange;
     canvas.drawCircle(Offset(250, 50),50, _paint);

     _paint.color = Colors.deepPurple;
     var  circleRect  = Offset(320, 150) &  Size(130,130);
     canvas.drawArc(circleRect, -pi/3, pi*3, false, _paint);

     _paint.color = Colors.greenAccent;
     canvas.drawRect(Rect.fromLTWH(470, 100, 100, 200), _paint);

    _path = Path();
    _path.moveTo(570, 50);
    _path.lineTo(500,50);
    _path.lineTo(470, 100);
    _path.lineTo(570, 100);
    _path.close();
    _paint.color  = Colors.cyanAccent;
    canvas.drawPath(_path, _paint);

    _paint.color  =Colors.deepOrange;
    canvas.drawCircle(Offset(650, 100), 50, _paint);

     _path = Path();
     _path.moveTo(650, 50);
     _path.lineTo(650, 300);
     _path.lineTo(700, 300);
     _path.lineTo(700, 80);
     _path.close();
     _paint.color  =Colors.lightGreenAccent;
     canvas.drawPath(_path, _paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return  false;
  }

}
