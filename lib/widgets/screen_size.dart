
import 'package:flutter/material.dart';

class ScreenSize{
final BuildContext context;
ScreenSize(this.context);


double  width(double designWidth) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  return screenWidth * (designWidth / 393); // Adjust the base width as needed
}


double height(double designHieght) {
  double screenHeight = MediaQuery.sizeOf(context).height;
  return screenHeight * (designHieght / 776); // Adjust the base width as needed
}








}