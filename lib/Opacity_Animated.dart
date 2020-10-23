
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  @override
  _OpacityDemoState createState() => _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {
  bool visibility =true;
  StreamController<bool>visibliStreamController=new StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    visibliStreamController.sink.add(visibility);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Opacity(opacity: 1,
                  child: Container(
                    height: 200,width: 200,
                    color: Colors.pink,
                  ),),
                // SizedBox(height: 15,),
                // Spacer(),
                Opacity(opacity: 1,
                  child: Container(
                    height: 200,width: 200,
                    color: Colors.blueAccent,
                  ),),
                Spacer(),
                Opacity(opacity: 1,
                  child: Container(
                    height: 200,width: 200,
                    color: Colors.amberAccent,
                  ),),
                Spacer(flex: 2,),

                StreamBuilder(
                  stream: visibliStreamController.stream,
                  builder: (context,snapshot){
                    visibility=snapshot.data==null?true:snapshot.data;
                    return AnimatedOpacity(
                      opacity: visibility==true?1:0,
                      duration: Duration(seconds: 1),
                      child: Container(
                        height: 200,width: 200,
                        color: Colors.redAccent,
                      ),
                    );
                  },
                ),

                // Spacer(),
                // Expanded(
                //   child: FloatingActionButton(
                //     backgroundColor: Colors.blueAccent,
                //     child: Icon(Icons.add,color: Colors.white,size: 30,),
                //     onPressed: (){
                //
                //       visibliStreamController.sink.add(!visibility);
                //
                //       // setState(() {
                //       //   visibility=!visibility;
                //       //
                //       // });
                //     },
                //   ),
                // )
              ],
            ),
          ),
        )
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    visibliStreamController.close();
  }
}

