import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorFilterDemo extends StatefulWidget {
  @override
  _ColorFilterDemoState createState() => _ColorFilterDemoState();
}

class _ColorFilterDemoState extends State<ColorFilterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColorFilter"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child:Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child:  Column(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.purple,BlendMode.overlay),
                child: Image(image: AssetImage("assets/model1.jpeg")),
              ),
              Divider(height: 10,),
              ColorFiltered(
                  colorFilter: ColorFilter.linearToSrgbGamma(),
                  child: Image(image: AssetImage("assets/model1.jpeg"),)),
              Divider(height: 10,),
              ColorFiltered(
                  colorFilter: ColorFilter.srgbToLinearGamma(),
                  child: Image(image: AssetImage("assets/model1.jpeg"),)),
              Divider(height: 10,),
              ColorFiltered(
                  colorFilter: ColorFilter.matrix(<double>[
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0,      0,      0,      1, 0,
                  ]),
                  child: Image(image: AssetImage("assets/model1.jpeg"),)),
            ],
          ),
        ),
      ),
    );
  }
}
