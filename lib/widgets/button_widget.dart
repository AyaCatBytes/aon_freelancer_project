import 'package:aon_freelancer_project/widgets/hexa_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/icons.dart';
import 'custom_text_widget.dart';

class ButtonWidget extends StatelessWidget {

  final String buttonColor;
  final String textColor;
  final String text;
  final Widget icon;
  final VoidCallback onPressed;


  const ButtonWidget({super.key, required this.buttonColor, required this.textColor, required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(

        backgroundColor: HexaColor(buttonColor),
       // foregroundColor: HexaColor("999999"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child:  Row(
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
          icon,


        ],
      ),
    );
  }
}
