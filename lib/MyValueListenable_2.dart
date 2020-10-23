import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MyValueListenable_2 extends StatefulWidget {
  @override
  _MyValueListenable_2State createState() => _MyValueListenable_2State();
}

class _MyValueListenable_2State extends State<MyValueListenable_2> {

  var  textChangeValue = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: Center(
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: textChangeValue,
              builder: (context,value,child){
                return  TextField(
                  onChanged: _updateErrorText,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )

                      ),
                    errorText: value  ==false?  "Input  is  Invalid ":  null,
                  ),
                );
              },
            )
          ],
        ),
      )
    );



  }

  _updateErrorText(String text) {
    var result  = (text==null ||  text  ==""||text.isEmpty )  ? false : true;
    textChangeValue.value = result;
  }


}
