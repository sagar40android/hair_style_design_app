import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerDemo extends StatefulWidget {
  @override
  _DividerDemoState createState() => _DividerDemoState();
}

class _DividerDemoState extends State<DividerDemo> {

  var generatedItemList=new List<String>.generate(20, (index) => "Items $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatioDemo"),
        // backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.greenAccent,
            height: 300,
            child: ListView(
                scrollDirection: Axis.vertical,
                children: [

                  ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Sun'),
                  ),
                  Divider(
                    height: 5,
                    thickness: 5,
                    color: Colors.purple,
                    indent: 15,
                    endIndent: 150,
                  ),
                  ListTile(
                    leading: Icon(Icons.brightness_3),
                    title: Text('Moon'),
                  ),

                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Star'),
                  ),
                  VerticalDivider(color: Colors.red,thickness: 5,indent: 3,),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(Icons.wb_sunny),
                        VerticalDivider(color: Colors.red,thickness: 5,indent: 3,),
                        Text("ddddddddddddd")
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),


                ]


            ),
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: ListView(

          scrollDirection: Axis.horizontal,
          children: [


            Text('Moon'),VerticalDivider(color: Colors.blue,thickness: 5,indent: 3,),Text('Moon'),VerticalDivider(color: Colors.blue,thickness: 5,indent: 3,),Text('Moon'),VerticalDivider(color: Colors.blue,thickness: 5,indent: 3,),Text('Moon'),




          ],
            ),
          ),
          Expanded(
            child: ListView(
              children:   ListTile.divideTiles(
                context: context,
                  color: Colors.purple,
                  tiles:[
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Sun'),
                    ),
                    ListTile(
                      leading: Icon(Icons.brightness_3),
                      title: Text('Moon'),
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Star'),
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Star'),
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Star'),
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Star'),
                    ), ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Star'),
                    ),


                  ] ).toList(),
            ),
          ),
          Expanded(
              child: Container(color: Colors.amberAccent,
                child: ListView.separated(
                    itemCount:generatedItemList== null?0:generatedItemList.length,
                  separatorBuilder: (context,index){
                    return  Divider(
                      color: Colors.red,
                      thickness: 5,
                    );
                  },
                  itemBuilder: (context,index){
                      return  ListTile(
                        title: Text(generatedItemList[index].toString()),
                      );
                  },
                ),
              ))
        ],

      ),
    );
  }
}
