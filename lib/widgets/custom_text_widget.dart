
import 'package:flutter/material.dart';

import 'hexa_color.dart';

class CustomTextWidget extends StatelessWidget {

  final String text;
  final String color;
  final double size ;
  final FontWeight fontWeight;
  final String fontFamily;
const CustomTextWidget({super.key, required this.text, required this.color, required this.size, required this.fontWeight, required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: HexaColor(color),
          fontSize: size,
          fontFamily: fontFamily,
          fontWeight:fontWeight// ExtraBold weight
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}

