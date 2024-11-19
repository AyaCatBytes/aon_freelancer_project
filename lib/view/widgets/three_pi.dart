import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import 'hexa_color.dart';
import 'screen_size.dart';
import 'custom_progress_indicator.dart';

class ThreePi extends StatelessWidget {
  final Color color1;
  final Color? color2; // Nullable parameter
  final Color color3;
  final bool isHalfHalfPI;

  const ThreePi({
    super.key,
    required this.color1,
    this.color2, // Nullable, optional
    required this.color3,
    this.isHalfHalfPI = false,
  });

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);

    double ipHeight = screenSize.height(6.3);
    double ipWidth = screenSize.width(111);

    return Container(
      child: Row(
        children: [
          // First progress bar
          Expanded(
            child: CustomProgressIndicator(
              color: color1,
              height: ipHeight,
              width: ipWidth,
            ),
          ),
          // Space
          SizedBox(
            width: screenSize.width(10.5),
          ),
          // Second progress bar
          isHalfHalfPI
              ? halfHalfProgressBar(screenSize)
              : CustomProgressIndicator(
            color: color2 ?? HexaColor("BFBFBF"), // Default value if null
            height: ipHeight,
            width: ipWidth,
          ),
          // Space
          SizedBox(
            width: screenSize.width(10.5),
          ),
          // Third progress bar
          Expanded(
            child: CustomProgressIndicator(
              color: color3,
              height: ipHeight,
              width: ipWidth,
            ),
          ),
        ],
      ),
    );
  }

  Widget halfHalfProgressBar(ScreenSize screenSize) {
    return Stack(
      children: [
        CustomProgressIndicator(
          color: AppColors.darkGrey,
          height: screenSize.height(6.3),
          width: screenSize.width(75.5),
        ),
        CustomProgressIndicator(
          color: AppColors.primary,
          height: screenSize.height(6.3),
          width: screenSize.width(44.5),
        ),
      ],
    );
  }
}
