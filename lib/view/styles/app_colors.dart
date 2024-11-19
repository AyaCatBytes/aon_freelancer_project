import 'package:flutter/material.dart';
import '../widgets/hexa_color.dart';

class AppColors {
  // Primary Colors
  static  Color primary = HexaColor("3C97AF");//the main blue color
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


  // Background Colors
  static  Color background =HexaColor("FFFFFF");
  static  Color surface =HexaColor("000000");

  // Text Colors
  static  Color heading1 =black;
  static  Color subHeading =HexaColor("0A0A0A");
  static  Color subThings =mediumGrey;
  static  Color hint =lightGrey;


  //disable
  static  Color disable =HexaColor("EBEBEB");


  // Error Colors
  static  Color error =HexaColor("000000");
  
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
