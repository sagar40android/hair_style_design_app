import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestingWidget extends StatefulWidget {
  @override
  _TestingWidgetState createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body:
      SizedBox.expand(
        child: Container(
          color: Colors.greenAccent,
          child: Column(
            children: [
              Text('Hello!'),
              Text('Goodbye!'),
            ],
          ),
        ),
      )


      // SizedBox.expand(
      //   child: Container(
      //     color: Colors.purpleAccent,
      //     child: Row(
      //       children: [
      //         // Text("This is a very long text that won’t fit the line."),
      //         Expanded(
      //             child: Container(
      //                 color: Colors.red,
      //                 // width: MediaQuery.of(context).size.width,
      //                 width: double.infinity,
      //                 child: Text("This is a very long text that won’t fit the line."))
      //         ),
      //
      //         Expanded(
      //             child: Container(
      //                 color: Colors.green,
      //                 child: Text("Goodbye!"))
      //         ),
      //
      //       ],
      //     ),
      //   )
      // ),

    );
  }
}
