import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget {
  @override
  _IndexedStackDemoState createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  ValueNotifier indexChangeNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indexed  Stack"),
      ),
    body: Container(
      child: InkWell(
        onTap: (){
          if(indexChangeNotifier.value ==2 ){
            indexChangeNotifier.value =0;
          }else{
            indexChangeNotifier.value +=1;
          }
        },

        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context,value,childwidget){
              return  IndexedStack(
                index: value,
                children: [
                  Container(
                    color: Colors.red,
                  ),

                  Container(
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    color: Colors.blueAccent,
                  ),


                ],
              );
            },

        ),
    )
    ));
  }
}
