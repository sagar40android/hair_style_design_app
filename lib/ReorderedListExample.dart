import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReorderedListExample extends StatefulWidget {
  @override
  _ReorderedListExampleState createState() => _ReorderedListExampleState();
}

class _ReorderedListExampleState extends State<ReorderedListExample> {
  List<String> myList= [
    "A0",
    "B1",
    "C2",
    "D3",
    "E4",
    "F5",
    "G6",
    "H7",
    "I8",
    "J9",
    "K10"
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     // myList  =List<String>.generate(20, (index) => "Items  ${index}").toList();
  }

  _onReorder(oldIndex, newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex = newIndex - 1;
      }
      var item = myList.removeAt(oldIndex);
      myList.insert(newIndex, item);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: ReorderableListView(
        header: Text("Header"),
        onReorder: _onReorder,
        children: myList
            .map(
              (c) => ListTile(
            key: ObjectKey(c),
            title: Text(c),
          ),
        )
            .toList(),
      ),
    );
  }
}
