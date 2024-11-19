
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'custom_text_widget.dart';
import 'hexa_color.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonColor;
  final String textColor;
  final String text;
  final Widget? icon;
  final VoidCallback onPressed;

  const ButtonWidget(
      {super.key,
      required this.buttonColor,
      required this.textColor,
      required this.text,
       this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: HexaColor(buttonColor),
        // foregroundColor: HexaColor("999999"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: text,
            color: textColor,
            size: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Exo',
          ),
          const SizedBox(width: 8.0),
          if (icon != null) ...[
            const SizedBox(width: 8.0),
            icon!,
          ],
        ],
      ),
    );
  }
}
