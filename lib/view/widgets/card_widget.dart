

import 'package:aon_freelancer_project/view/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controller/button_controller.dart';
import '../../controller/card_controller.dart';
import 'card_container.dart';
import 'custom_text_widget.dart';
import 'hexa_color.dart';

//final CardController controller =Get.find();
class CardWidget extends StatelessWidget {
  final Widget iconWidget;
  final Text titleText;
  final Text subTitleText;
  final String cardType;

  CardWidget(
      {super.key,
      required this.iconWidget,
      required this.titleText,
      required this.subTitleText,
      required this.cardType});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CardController>();
    final buttonController = Get.find<ButtonController>();
    ScreenSize screenSize = ScreenSize(context);
    return Obx(
      () => CardContainer(
        paddingWidth: 0,
        paddingHeight: 12,
        backGroundColor: cardType == 'c'
            ? controller.backgroundColorClient.value
            : controller.backgroundColorFreelancer.value,
        borderColor: cardType == 'c'
            ? controller.borderColorClient.value
            : controller.borderColorFreelancer.value,
        widget: ListTile(
          onTap: () {
            controller.selectedCard(cardType);
            buttonController.whenSelectingCard();
            print('ontap on the card');
          },
          leading: iconWidget,
          title: titleText,
          subtitle: subTitleText,
        ),
      ),
    );
  }
}
