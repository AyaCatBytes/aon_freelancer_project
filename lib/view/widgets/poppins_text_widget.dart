

import 'package:flutter/material.dart';

import 'hexa_color.dart';

class PoppinsTextWidget extends StatelessWidget {
  final String text;
  final String color;
  final double size ;
  final FontWeight fontWeight;
  const PoppinsTextWidget({super.key, required this.text, required this.color, required this.size, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: HexaColor(color),
          fontSize: size,
          fontFamily: 'Poppins',
          fontWeight:fontWeight// ExtraBold weight
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
