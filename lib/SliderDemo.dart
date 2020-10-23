import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderVal = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBoxDemo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // Slider(
            //     value: _sliderVal,
            //     min: 0,
            //     max: 100,
            //     label: _sliderVal.toString(),
            //     onChanged: (value){
            //       print("Slider ==> $_sliderVal");
            //       setState(() {
            //         _sliderVal=value;
            //       });
            //     }),
            // SliderTheme(
            //     data: SliderTheme.of(context).copyWith(
            //       activeTrackColor: Colors.red[100],
            //       inactiveTickMarkColor: Colors.red[100],
            //       trackHeight: 4.0,
            //       // trackShape:RectangularRangeSliderTrackShape(),
            //       thumbColor: Colors.purple,
            //       thumbShape:RoundSliderThumbShape(enabledThumbRadius: 12.0),
            //       overlayColor: Colors.red.withAlpha(32),
            //       overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)
            //     ),
            //     child: Slider(
            //       value: _sliderVal,
            //       min: 0,
            //       max: 100,
            //       label: _sliderVal.toString(),
            //       onChanged: (value){
            //         print("Slider ==> $_sliderVal");
            //         setState(() {
            //           _sliderVal=value;
            //         });
            //       },
            //     )),

            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.redAccent,
                    inactiveTrackColor: Colors.red[100],
                  trackHeight: 4.0,
                  // trackShape: RoundedRectRangeSliderTrackShape(),
                  thumbColor: Colors.red,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                  overlayColor: Colors.red[100],
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
                 tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 5),
                 activeTickMarkColor: Colors.red,
                  inactiveTickMarkColor: Colors.red.withOpacity(0.3),
                valueIndicatorShape:    PaddleSliderValueIndicatorShape(),
                  valueIndicatorColor: Colors.red,
                valueIndicatorTextStyle: TextStyle(color: Colors.white)
                ),
                child: Slider(
                    value: _sliderVal,
                    min: 1,max: 100,
                    divisions: 10,
                    label: "$_sliderVal",
                    onChanged: (value){
                  print("DeiviSlider ==> $_sliderVal");
                  setState(() {
                    _sliderVal=value;
                  });
                }),
            )
          ],
        ),
      ),
    );
  }
}
