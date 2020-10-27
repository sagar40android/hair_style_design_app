import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationListenerWidgetDemo extends StatefulWidget {
  @override
  _NotificationListenerWidgetDemoState createState() => _NotificationListenerWidgetDemoState();
}

class _NotificationListenerWidgetDemoState extends State<NotificationListenerWidgetDemo> {

  _onStartScroll(){
    setState(() {
      print("Scroll start");
    });
  }


  _onEndScroll(){
    setState(() {
      print("End Scroll");
    });
  }

  _onUpdateScroll(){
    setState(() {
      print("update scroll");
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Listener "),
      ),
      body: Column(
        children: [
          Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification){

                  if(scrollNotification is ScrollStartNotification){
                    _onStartScroll();

                  }else if(scrollNotification is ScrollUpdateNotification){
                        _onUpdateScroll();
                  }else if(scrollNotification is ScrollEndNotification){
                        _onEndScroll();
                  }

                },


                child: ListView.builder(
                  itemCount: 100,
                    itemBuilder: (context,index){
                      return ListTile(
                        title: Text("Item ${index}"),
                      );
                    }),
              )

          )
        ],
      ),
    );
  }
}
