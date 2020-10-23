import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AllAnimationDemo extends StatefulWidget {
  @override
  _AllAnimationDemoState createState() => _AllAnimationDemoState();
}

class _AllAnimationDemoState extends State<AllAnimationDemo>  with  TickerProviderStateMixin {

  ValueNotifier animatedContainerValue=ValueNotifier<double>(100.0);
  ValueNotifier animatedCrossFadeValue=ValueNotifier<bool>(true);
  ValueNotifier animatedOpacityListener =ValueNotifier<double>(1.0);
  ValueNotifier animatedSizeListener =ValueNotifier<double>(30.0);
  ValueNotifier animatedPaddingListener =ValueNotifier<double>(0.0);
  ValueNotifier animatedPositionListener =ValueNotifier<double>(0.0);
  double  _changeWidth=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
         child: Column(
           children: [

             ValueListenableBuilder(
               valueListenable: animatedContainerValue,
               builder: (BuildContext context, value, Widget child) {
                 return  AnimatedContainer(
                   duration: Duration(seconds: 2),
                   color: Colors.amberAccent,
                   height: 100,
                   width: value,
                   child: FlatButton(
                     child: Text("click  to  Grow  More"),
                     onPressed: (){
                       animatedContainerValue.value  =   value  +=50;
                       // setState(() {
                       //   _changeWidth  +=50;
                       // });
                     },
                   ),
                 );
               },

             ),

             InkWell(
               onTap: (){
                 print("dddddddd");
                 animatedCrossFadeValue.value=!animatedCrossFadeValue.value;
               },
               child: ValueListenableBuilder(
                 valueListenable: animatedCrossFadeValue,
                 builder: (BuildContext context, value, Widget child) {
                   return  AnimatedCrossFade(
                     duration: Duration(seconds: 2),
                     crossFadeState: value?CrossFadeState.showFirst:CrossFadeState.showSecond,
                     firstChild: Container(
                       color: Colors.greenAccent,
                       width: 100,
                       height: 100,

                     ),
                     secondChild: Container(
                       color: Colors.purpleAccent,
                       width: 200,
                       height: 200,

                     ),

                   );
                 },
               ),
             ),

             ValueListenableBuilder(
               valueListenable: animatedOpacityListener,
               builder: (BuildContext context, value, Widget child) {
                 return  AnimatedOpacity(
                   opacity: value,
                   duration: Duration(seconds: 2),
                   child: Container(
                     color: Colors.deepOrangeAccent,
                     width: 200,
                     height: 200,
                     child: InkWell(
                       onTap: (){
                         animatedOpacityListener.value  =   (value ==0.0?1.0:0.0 );
                       },
                     ),
                   ),
                 );
               },

             ),

             Expanded(
               child: ValueListenableBuilder(
                 valueListenable: animatedSizeListener,
                 builder: (context,value,childWidget){
                   return  AnimatedSize(
                     vsync: this,
                     duration: Duration(seconds: 2),
                     child:  FlatButton(
                       onPressed: (){
                         animatedSizeListener.value  = (value>300.0  ? 30.0  : value+20.0);
                       },
                       child: Icon(Icons.coronavirus_rounded,size:value),),
                   );
                 },
               ),
             ),

             ValueListenableBuilder(
               valueListenable: animatedPaddingListener,
               builder: (BuildContext context, value, Widget child) {
                 return  AnimatedPadding(
                   padding: EdgeInsets.all(value),
                   duration: Duration(seconds: 2),
                   curve: Curves.easeOut,
                   child: Container(
                     width: double.infinity,
                     height: 100,
                     color: Colors.purpleAccent,
                     child: InkWell(
                       onTap: (){
                         animatedPaddingListener.value  =   (value ==0.0?30.0:0.0 );
                       },
                     ),
                   ),
                 );
               },

             ),

          ValueListenableBuilder(
            valueListenable: animatedPositionListener,
            builder: (BuildContext context, value, Widget child) {
              return  AnimatedPositioned(
                left: value,
                right: 0.0,
                top: 0.0,
                bottom: 0.0,
                duration: Duration(seconds: 2),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.cyanAccent,
                    child: InkWell(
                      onTap: (){
                        // animatedPositionListener.value  =   (value ==0.0?30.0:0.0 );
                        animatedPositionListener.value  =   (value +=10 );
                        print("set  left  position");
                      },
                    ),
                  ), );
            },
          )
           ],
         ),
        )
      ),
    );
  }
}
