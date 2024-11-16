import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen_size.dart';
import 'custom_progress_indicator.dart';

class ThreePi extends StatelessWidget {
  final String color1;
  final String color2;
  final String color3;


  const ThreePi(
      {super.key, required this.color1, required this.color2, required this.color3});
  final double ipHeight=6.3;
  final double ipWidth=111;


  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Container(

    child:Row(
      children: [

        CustomProgressIndicator(
            color: color1, height:ipHeight, width: ipWidth),
        SizedBox(
          width: screenSize.width(10.5),
        ),
        CustomProgressIndicator(
            color: color2, height:ipHeight, width: ipWidth),

        SizedBox(
          width: screenSize.width(10.5),
        ),
        CustomProgressIndicator(
            color: color3, height: ipHeight, width: ipWidth),
      ],
    )
    ,
    );
  }
}