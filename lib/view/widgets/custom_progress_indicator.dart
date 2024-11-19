import 'package:flutter/material.dart';

import 'hexa_color.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  const CustomProgressIndicator(
      {super.key,
      required this.color,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        color: color,
      ),
    );
  }
}
