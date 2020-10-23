import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageStylingDemo extends StatefulWidget {
  @override
  _ImageStylingDemoState createState() => _ImageStylingDemoState();
}

class _ImageStylingDemoState extends State<ImageStylingDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
        // backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipOval(
                  child: Image(
                image: AssetImage("assets/model1.jpeg"),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )),
              // Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(140),topRight: Radius.circular(100)),
                child: Container(
                      height: 200,
                      width: 200,
                  color: Colors.purpleAccent,
                )

                // Image(
                //     image: AssetImage("assets/model2.jpeg"),
                //     height: 200,
                //     width: 200,
                //     fit: BoxFit.cover),
              ),
              // Spacer(),
              ClipRect(
                child:Image(
                    image: AssetImage("assets/model3.jpeg"),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover),
              ),
              // Spacer(),
              ClipPath(
              clipper: TriangleClip(),
                child:Image(
                    image: AssetImage("assets/model3.jpeg"),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover),
              ),



            ],
          ),
        ),
      ),
    );
  }


}

class TriangleClip  extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path=new  Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width/2, size.height);
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
