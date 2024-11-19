import 'package:flutter/material.dart';

class HexaColor extends Color{
  final String color;


  HexaColor(this.color) : super(_hexColor(color));


  static int _hexColor(String color){

    return  int.parse("0xff$color");
  }



}