import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstraintLayoutExample extends StatefulWidget {
  @override
  _ConstraintLayoutExampleState createState() => _ConstraintLayoutExampleState();
}

class _ConstraintLayoutExampleState extends State<ConstraintLayoutExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
      ),
      body:

      Column(
        children:[



          // Container(
          //   height: 200.0,
          //   width: 200,
          //   color:  Colors.greenAccent,
          //   child: FittedBox(
          //     // fit: BoxFit.contain,
          //       child: Container(
          //         // height: 200.0,
          //         // width: 200,
          //
          //         color: Colors.redAccent,
          //         child: Container(
          //           color:  Colors.purpleAccent,
          //         ),
          //       )
          //   ),
          // ),
          // LimitedBox(
          //   maxWidth: 400,
          //   maxHeight: 400,
          //   child: Container(
          //     height: 200.0,
          //     width: 200,
          //     color: Colors.purpleAccent,
          //
          //   ),
          // )
        ] ,
      )

      // Center(
      //
      //   child:  LimitedBox(
      //     maxWidth: 200,
      //     child: FittedBox(
      //           child: Container(
      //             height: 20.0,
      //             width: double.infinity,
      //           )
      //       ),
      //   )

        // child: LimitedBox(
        //   maxWidth: 200,
        //       child: Container(
        //         width: double.infinity,
        //         height: 100,
        //         color: Colors.redAccent,
        //       ),
        // ),


        // child:UnconstrainedBox(
        //   child: LimitedBox(
        //     maxWidth: 200,
        //     child: Container(
        //       width: double.infinity,
        //       height: 100,
        //       color: Colors.redAccent,
        //     ),
        //   ),
        // )


            // OverflowBox(
            //   minHeight: 10.0,
            //   minWidth: 10.0,
            //   maxWidth: 200,
            //   maxHeight: 300,
            //   child: Container(width: 0, height: 0, color: Colors.greenAccent),
            // )

          // UnconstrainedBox(
          //   // child: Container(width: 10, height: 150, color: Colors.greenAccent),
          //   child: Container(width: 1110, height: 150, color: Colors.greenAccent),
          // )


        // ConstrainedBox(
        //   constraints: BoxConstraints(
        //     minHeight: 150,
        //     minWidth: 150,
        //     maxHeight: 300,
        //     maxWidth: 300,
        //
        //   ),
        //   child: Container(
        //     color: Colors.red,
        //     width: 10,
        //     height:10,
        //   ),
        // ),



        // Container(
        //      color: Colors.red,
        //          child: Container(width: 150, height: 150, color: Colors.greenAccent),
        // ),




      // )



      // Container(
      //      color: Colors.red,
      //          child: Container(width: 100, height: 100, color: Colors.greenAccent),
      // ),
    );
  }
}
