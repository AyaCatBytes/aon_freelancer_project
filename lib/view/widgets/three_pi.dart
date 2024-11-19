import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen_size.dart';
import 'custom_progress_indicator.dart';

class ThreePi extends StatelessWidget {
  final String color1;
  final String color2;
  final String color3;
  final bool isHalfHalfPI;


  const ThreePi(
      {super.key,
      required this.color1,
       this.color2="",
      required this.color3,
       this.isHalfHalfPI=false});





  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);

     double ipHeight =  screenSize.height(6.3);
    double ipWidth =screenSize.width(111);
     // double ipWidth =  isHalfHalfPI?
     // screenSize.width(111):
     // screenSize.width(111);
    return Container(
      child: Row(
        children: [
          //first prograss bar-----------------------------------------
          Expanded(
            child:
          CustomProgressIndicator(
              color: color1, height: ipHeight, width: ipWidth)),

          //space
          SizedBox(
            width: screenSize.width(10.5),
          ),

          //second brogreas bar ---------------------------------------------
          isHalfHalfPI
              ? halfHalfPrograssPar(screenSize)
              : CustomProgressIndicator(
                  color: color2, height: ipHeight, width: ipWidth),
//space
          SizedBox(
            width: screenSize.width(10.5),
          ),

          //thred prograss bar --------------------------------------------------
    Expanded(
    child:
    CustomProgressIndicator(
              color: color3, height: ipHeight, width: ipWidth)),
        ],
      ),
    );
  }


  Widget halfHalfPrograssPar(ScreenSize screenSize){


    return Stack(

      children: [
       CustomProgressIndicator(
            color: "BFBFBF", height:  screenSize.height(6.3), width: screenSize.width(75.5)),
       CustomProgressIndicator(

        color: "3C97AF", height:  screenSize.height(6.3), width:screenSize.width(44.5)),

      ],
    );

  }
}
