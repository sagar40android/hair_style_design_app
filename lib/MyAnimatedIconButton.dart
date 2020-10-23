
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimatedIconButton extends StatefulWidget {
  @override
  _MyAnimatedIconButtonState createState() => _MyAnimatedIconButtonState();
}

class _MyAnimatedIconButtonState extends State<MyAnimatedIconButton>  with  TickerProviderStateMixin {
  AnimationController menuAnimationController,pausePlayAnimationController;
  // pausePlayAnimationController

  var  isArrowMenu = ValueNotifier(false);
  var   pausePlay   =ValueNotifier(false);
  @override
  void initState() {
    super.initState();

    menuAnimationController = AnimationController(vsync: this,duration: Duration(seconds: 1),reverseDuration: Duration(seconds: 1));
    pausePlayAnimationController = AnimationController(vsync: this,duration: Duration(seconds: 2),reverseDuration: Duration(seconds: 2));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageStylingDemo"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [


                ValueListenableBuilder(
                  valueListenable: isArrowMenu,
                  builder: (context,value,childWidget){
                    return  GestureDetector(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: menuAnimationController,
                        size: 50,),
                      onTap: (){
                        value ? menuAnimationController.forward() : menuAnimationController.reverse();
                        isArrowMenu.value =!value;
                      },
                    );
                  },
                ),


           ValueListenableBuilder(
              valueListenable: pausePlay,
              builder: (context,value,childWidget){
                return  GestureDetector(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    progress: pausePlayAnimationController,
                    size: 50,),
                  onTap: (){
                    value ? pausePlayAnimationController.forward()  : pausePlayAnimationController.reverse();
                    pausePlay.value = !value;
                  },
                );
              },
            )


            ],
          ),
        ),
      ),
    );
  }
}
