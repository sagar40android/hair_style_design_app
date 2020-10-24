import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonDemo extends StatefulWidget {
  @override
  _ToggleButtonDemoState createState() => _ToggleButtonDemoState();
}

class _ToggleButtonDemoState extends State<ToggleButtonDemo> {
  List<bool> isSelected = [false, false, false];
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();

  List<FocusNode> focusToggle;
  @override
  void initState() {
    super.initState();
    focusToggle=[_focusNode1,_focusNode2,_focusNode3];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColorFilter"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black38,
          child: Center(
            child: Column(
              children: [
                ToggleButtons(
                  isSelected: isSelected,
                  children: [
                    Icon(Icons.format_bold),
                    Icon(Icons.format_italic),
                    Icon(Icons.link),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  color: Colors.greenAccent,
                  selectedColor: Colors.amber,
                  fillColor: Colors.purple,
                  highlightColor: Colors.purpleAccent,
                  splashColor: Colors.lightBlue,
                  selectedBorderColor: Colors.greenAccent,
                  borderColor: Colors.white,
                  borderWidth: 5,
                  disabledColor: Colors.blueGrey,
                  disabledBorderColor: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                  focusColor: Colors.red,
                  focusNodes: focusToggle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(_focusNode1);

                      },
                      color: Colors.blue,
                      child: Text(
                        "Previous",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(_focusNode2);
                      },
                      color: Colors.blue,
                      child: Text(
                        "Previous",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
