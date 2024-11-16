
import 'package:aon_freelancer_project/widgets/button_widget.dart';
import 'package:aon_freelancer_project/widgets/poppins_text_widget.dart';
import 'package:aon_freelancer_project/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/button_controller.dart';
import '../controller/card_controller.dart';
import '../util/icons.dart';
import 'custom_text_widget.dart';
import 'hexa_color.dart';


//final CardController controller =Get.find();
class CardWidget extends StatelessWidget {

  final Widget iconWidget;
  final CustomTextWidget titleText;
  final CustomTextWidget subTitleText;
  final String cardType;

   CardWidget(
      {super.key,
      required this.iconWidget,
      required this.titleText,
      required this.subTitleText, required this.cardType});

  @override
  Widget build(BuildContext context) {
    final  controller =Get.find<CardController>();
    final  buttonController =Get.find<ButtonController>();
    ScreenSize screenSize = ScreenSize(context);
    return Obx(
      () => Container(

          //padding: EdgeInsets.only(right:0 ,left:0 ,top: screenSize.height(12),bottom: screenSize.height(12) ),
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width(0), vertical: screenSize.height(11)),
          decoration: BoxDecoration(
            color:HexaColor(cardType ==  'c' ? controller.backgroundColorClient.value :controller.backgroundColorFreelancer.value),
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: HexaColor(cardType ==  'c' ? controller.borderColorClient.value :controller.borderColorFreelancer.value)),
          ),
          child: ListTile(
            onTap: () {
              controller.selectedCard(cardType);
              buttonController.whenSelectingCard();





              print('ontap');
            },
            leading: iconWidget,
            title: titleText,
            subtitle: subTitleText,
          )),
    );
  }
}
