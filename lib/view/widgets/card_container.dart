import 'package:aon_freelancer_project/widgets/screen_size.dart';
import 'package:flutter/cupertino.dart';

import 'hexa_color.dart';

class CardContainer extends StatelessWidget {
  //prameters for padding
  final double paddingWidth;
  final double paddingHeight;

  //prameters for the container apperance

  final String backGroundColor;
  final String borderColor;

  //container child

  final Widget widget;

  const CardContainer(
      {super.key,
      required this.paddingWidth,
      required this.paddingHeight,
       this.backGroundColor="FFFFFF",
      required this.borderColor,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Container(
      //padding: EdgeInsets.only(right:0 ,left:0 ,top: screenSize.height(12),bottom: screenSize.height(12) ),
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width(paddingWidth),
          vertical: screenSize.height(paddingHeight)),
      decoration: BoxDecoration(
        color: HexaColor(backGroundColor),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: HexaColor(borderColor)),
      ),
      child: widget,
    );
  }
}
