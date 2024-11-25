import 'package:flutter/material.dart';
import '../widgets/hexa_color.dart';

class AppColors {
  // Primary Colors
  //3C97AF

 // static  Color primary = HexaColor("3C97AF");//the main blue color
  static  Color primary = HexaColor("3C97AF");//the main blue color

  //ECF6F9
  static  Color primarySettingsList = HexaColor("ECF6F9");
  static  Color primaryVariant =HexaColor("000000");//
  static  Color secondary =HexaColor("ECF6F9");//this color for hieghlight stuff

  // Neutral Colors
  static  Color black =HexaColor("000000");
  static  Color white =HexaColor("FFFFFF");
 // static  Color grey =HexaColor("000000");

  //shades of grays
  static  Color darkGrey =HexaColor("BFBFBF");
  static  Color mediumGrey =HexaColor("999999");
  static  Color mediumGreyLighterShade =HexaColor("AFB1B6");

  static  Color lightGrey =HexaColor("D9D9D9");
  static  Color oneOfTheGrays =HexaColor("808080");
  //61646B
  static  Color GrayForPE =HexaColor("61646B");

//ECF6F9 shodw color old
// F7FBFC homebachground color old
  // Background Colors

  static  Color background =HexaColor("FFFFFF");
  static Color homeBackground=HexaColor("F8FBFC");
  static Color shadow=HexaColor("EEF6F8");
  static  Color surface =HexaColor("000000");

  // Text Colors
  static  Color heading1 =black;
  static  Color subHeading =HexaColor("0A0A0A");
  static  Color subThings =mediumGrey;
  static  Color hint =lightGrey;
  static  Color TextPrimary =HexaColor("0A0A0A");
//3C97AF
  //D1D1D6
  static  Color checkBoxColor =HexaColor("3C97AF");
  static  Color checkBoxBorder=HexaColor("D1D1D6");
  //disable
  static  Color disable =HexaColor("EBEBEB");


  // Error Colors
  static  Color error =HexaColor("000000");

  //success colors

  static  Color darkGreen =HexaColor("4DB251");
  static  Color lightGreen =HexaColor("DDF8E7");

  
//  
//   Future<Color> hexaColor(String color) async {
//   try {
//   int toHexa = int.parse("0xff$color");
//   return Color(toHexa);
//   } catch (e) {
//   throw FormatException('Invalid hexadecimal color string.');
//   }
//   }
//  
 }
