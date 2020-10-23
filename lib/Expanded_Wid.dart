import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ExpandedDemo extends StatefulWidget {
  @override
  _ExpandedDemoState createState() => _ExpandedDemoState();
}

class _ExpandedDemoState extends State<ExpandedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widg"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child:Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                flex: 2,
                  child: Container(
                      color: Colors.red,
                      child: Text("This is a very long text that won’t fit the line."))
              ),

              Flexible(
                  flex: 2,
                  child: Container(
                      color: Colors.green,
                      child: Text("Goodbye!"))
              ),
              Flexible(
                  flex: 2,
                  child: Container(
                      color: Colors.green,
                      child: Text("Goodbye!"))
              ),

              Flexible(
                  flex: 2,
                  child: Container(
                      color: Colors.green,
                      child: Text("Goodbye!"))
              ),



            ],
          )



          // Center(
          //   child: Container(
          //     width: 400,height: 200,color: Colors.greenAccent,
          //     child: Wrap(
          //       direction: Axis.horizontal,
          //       alignment: WrapAlignment.start,
          //       // runAlignment: WrapAlignment.start,
          //       spacing: 10,
          //       runSpacing: 10,
          //       verticalDirection: VerticalDirection.down,
          //       children: [
          //         RaisedButton(onPressed: (){},child: Text("daddy"),color: Colors.blueAccent,),
          //         RaisedButton(onPressed: (){},child: Text("daddy"),color: Colors.yellowAccent,),
          //         RaisedButton(onPressed: (){},child: Text("daddy"),color: Colors.yellowAccent,),
          //         RaisedButton(onPressed: (){},child: Text("daddy"),color: Colors.yellowAccent,),
          //         RaisedButton(onPressed: (){},child: Text("daddy"),color: Colors.yellowAccent,),
          //         RaisedButton(onPressed: (){},child: Text("daddy"),color: Colors.yellowAccent,),
          //       ],
          //     ),
          //   ),
          // )





          // PageView(
          //
          //   reverse: true,
          //   scrollDirection: Axis.vertical,
          //   onPageChanged: (id){
          //     print("pageno====>$id");
          //   },
          //   children: [
          //     Expanded(child: Container(color: Colors.yellowAccent,)),
          //     Expanded(child: Container(color: Colors.deepOrange,)),
          //     Expanded(child: Container(color: Colors.greenAccent,)),
          //     Expanded(child: Container(color: Colors.blueAccent,)),
          //   ],)


          // Column(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     // Container(color: Colors.yellowAccent,child: Text("dddddddd"),),
          //     // Container(color: Colors.deepOrange,),
          //     // Expanded(flex:3,child: Container(color: Colors.yellowAccent,)),
          //     Expanded(flex:14,child: Container(color: Colors.deepOrange,)),
          //     Expanded(flex:3,child: Container(color: Colors.deepOrange,)),
          //     Expanded(flex:3,child: Container(color: Colors.blueAccent,)),
          //     Expanded(flex:3,child: Container(color: Colors.greenAccent,)),
          //     Expanded(flex:3,child: Container(color: Colors.deepPurpleAccent,)),
          //
          //     // Flexible(flex:3,child: Container(height: 100,color: Colors.yellowAccent,)),
          //     // Flexible(flex:18,child: Container(color: Colors.deepOrange,)),
          //   ],
          // ),
        ),
      ),
    );
  }
}
