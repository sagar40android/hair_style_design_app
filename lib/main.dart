// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hair_style_design_app/AnimatedListDemo.dart';
import 'package:hair_style_design_app/Expanded_Wid.dart';

import 'AllAnimationDemo.dart';
import 'AnimatedSwitcherDemo.dart';
import 'AnimatedSwitcherDemo_2.dart';
import 'AspectRatioDemo.dart';
import 'ClipPathDemoExample.dart';
import 'ClipPathExample_2.dart';
import 'ConstraintLayoutExample.dart';
import 'DividerDemo.dart';
import 'FractionallySizedBoxDemo.dart';
import 'ImageStylingDemo.dart';
import 'IndexedStackDemo.dart';
import 'LimitedBoxExample.dart';
import 'MyAnimatedIconButton.dart';
import 'MyAnimationControlllerDemo.dart';
import 'MyAnimationDemo.dart';
import 'MyCustomPainterDemo.dart';
import 'MyCustomPainterDemo_2.dart';
import 'MyFittedBoxDemo.dart';
import 'MyTransformWidgetDemo.dart';
import 'MyValueListenable.dart';
import 'MyValueListenable_2.dart';
import 'Opacity_Animated.dart';
import 'PositionAnimationDemo.dart';
import 'ReorderedListExample.dart';
import 'SliderDemo.dart';
import 'TestingWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      //     primaryColor: Colors.purpleAccent,
      // primaryColorLight:Colors.amberAccent,
      //     primaryColorDark:Colors.deepOrange,
      // dividerTheme: DividerThemeData(
      //   color: Colors.purpleAccent,
      //   thickness: 5,
      //   indent: 50
      //   // space: 45
      // )
        ),
      // home: HomePage(),
      // home: ExpandedDemo(),
      // home: OpacityDemo(),
      // home: AnimatedListDemo(),
      // home: AspectRatioDemo(),
      // home: DividerDemo(),
      // home: ImageStylingDemo(),
      // home: ClipPathDemoExample(),
      // home: MyAnimationDemo(),
      // home: MyAnimationController(),
      // home: MyFittedBoxDemo(),
      // home: MyCurstomPainterDemo(),
      // home: MyCustomPainterDemo_2(),
      // home: ClipPathExample_2(),
      // home: MyTransformWidgetDemo(),
      // home: MyValueListenable(),
      // home: MyValueListenable_2(),
      // home: MyAnimatedIconButton(),
      // home: ReorderedListExample(),
      // home: LimitedBoxExample(),
      // home: ConstraintLayoutExample(),
      // home: TestingWidget(),
      // home: AnimatedSwitcherDemo(),
      // home: AnimatedSwitcherDemo_2(),
      // home: PositionAnimationDemo(),
      // home: AllAnimationDemo(),
      // home: IndexedStackDemo(),
      // home: FractionallySizedBoxDemo(),
      home: SliderDemo(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedDate = 19;
  var selectedBarber = 'Jonathan';
  var selectedTime = '12:30';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Booking",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop(true);
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Positioned(
                  top: 20.0,
                  left: 15.0,
                  right: 15.0,
                  child: Container(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        getDate(18, "Tue"),
                        getDate(19, "Wed"),
                        getDate(20, "Tue"),
                        getDate(21, "Tue"),
                        getDate(22, "Tue"),
                        getDate(23, "Tue"),
                        getDate(24, "Tue"),
                      ],
                    ),
                  )),
              SizedBox(height: 35.0),
              Center(
                  child: Text(
                    "Hagorapt",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 25.0),
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 10,right: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    hairCutBadges("Beards",35),
                    hairCutBadges("Crew Cur",55),
                  ],
                ),
              ),

              SizedBox(height: 25.0),
              Container(
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    getBarber("SAgar"),
                    getBarber("chetan"),
                    getBarber("Pritam"),
                    getBarber("Pritam"),
                    getBarber("Pritam"),
                    getBarber("Pritam"),
                    getBarber("Pritam"),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    getTime("11.0"),
                    getTime("12.30"),
                    getTime("13.0"),
                    getTime("15.0"),
                  ],
                ),
              ),

              Flexible(
                fit: FlexFit.loose,
                  child: Container(
                    height: 300,
                    child: Center(child: Text("ddddddd")),
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                  )
              )


              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //    Stack(
              //      children: [
              //        Container(
              //          height: 60,
              //       decoration: BoxDecoration(
              //         color: Colors.black,
              //       ),
              //        )
              //      ],
              //    )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget getTime(String time){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 25.0),
        Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(color:selectedTime == time ? Colors.black : Colors.white,),
            color: selectedTime == time ? Colors.black : Colors.white,
          ),
          child: Center(
            child: InkWell(
              onTap: () {
                selectedTimeClick(time);
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                 time,
                  style: TextStyle(fontSize: 22,color: selectedTime == time ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget getBarber(String name){
    return Row(
      children: [
        SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1,color: Colors.black),
            color: Colors.amberAccent
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100,
              ),
              SizedBox(height: 5,),
              Text(
                name,
                style: TextStyle(fontSize: 17,color: Colors.grey, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget hairCutBadges(String cutStyle,int price){
    return   Row(
      children: [

        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(cutStyle, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text("\$${price}", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                IconButton(padding: EdgeInsets.all(5),icon: Icon(Icons.close,size: 20,), onPressed: (){},color: Colors.red,)
              ],
            ),
          ),
        ),
        SizedBox(width: 15,),

      ],
    );

  }

  Widget getDate(int date, String day) {
    return Row(
      children: [
        SizedBox(
          width: 25,
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: selectedDate == date ? Colors.black : Colors.white,
              border: Border.all(color: Colors.black)),
          child: InkWell(
            onTap: () {
              selectDate(date);
            },
            child: Padding(
              padding: EdgeInsets.all(7),
              child: Column(
                children: [
                  Text(
                    date.toString(),
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: selectedDate == date ? Colors.white : Colors.black ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    day,
                    style: TextStyle(fontSize: 14, color:  selectedDate == date ? Colors.white : Colors.black),

                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  selectDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }

  selectedTimeClick(String time){
    setState(() {
      selectedTime = time;
    });
  }




}
