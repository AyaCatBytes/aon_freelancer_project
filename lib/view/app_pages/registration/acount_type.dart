import 'package:aon_freelancer_project/controller/button_controller.dart';
import 'package:aon_freelancer_project/view/app_pages/registration/phone_input_widget.dart';
import 'package:aon_freelancer_project/view/styles/app_text_styles.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';
import '../../styles/app_colors.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/custom_text_widget.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/three_pi.dart';
import 'package:aon_freelancer_project/util/icons.dart';
import '../../styles/app_text_styles.dart';

class AcountType extends StatelessWidget {
  AcountType({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CardController>();
    final buttonController = Get.find<ButtonController>();
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      body: Container(
          color: Colors.white,
          //padding: EdgeInsets.only(top: screenSize.height(10)),
          margin: EdgeInsets.symmetric(
              horizontal: screenSize.width(24),
              vertical: screenSize.height(48)),
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //the progress indicator-----------------
                    ThreePi(
                        color1: AppColors.primary, color2: AppColors.darkGrey, color3: AppColors.darkGrey),

                    //space
                    SizedBox(
                      height: screenSize.height(30),
                    ),

                    //title  lets Go---------------------------
                    Text(
                      "Let’s Get started!",
                      style: AppTextStyles.heading1,
                    ),

                    //space
                    SizedBox(
                      height: screenSize.height(13),
                    ),

                    //sub title --------------------------------
                    Text(
                      "How do you plan to use this platform",
                      style: AppTextStyles.heading2,
                    ),

                    //space
                    SizedBox(
                      height: screenSize.height(45),
                    ),

                    //freelancer card----------------------------

                    CardWidget(
                      iconWidget: ProjectIcons.user(
                          color:
                              HexaColor(controller.iconColorFreelancer.value),
                          size: 22.0),
                      titleText: Text(
                        "Freelancer",
                        style: AppTextStyles.cardTitle,
                      ),
                      subTitleText: Text(
                        "I’m a freelancer ready to work for projects",
                        style: AppTextStyles.cardSubtitle,
                      ),
                      cardType: "f",
                    ),

                    //space
                    SizedBox(
                      height: screenSize.height(16),
                    ),

                    //Client card----------------------------
                    CardWidget(
                      iconWidget: ProjectIcons.userSearch(
                          color: HexaColor(controller.iconColorClient.value),
                          size: 22.0),
                      titleText: Text(
                        "Client",
                        style: AppTextStyles.cardTitle,
                      ),
                      subTitleText: Text(
                        "I’m a client searching for talented freelancers",
                        style: AppTextStyles.cardSubtitle,
                      ),

                      cardType: "c",
                    ),
                    //space
                    SizedBox(
                      height: screenSize.height(270),
                    ),

                    //Next button----------------------------

                    ButtonWidget(
                        buttonColor: buttonController.buttonColor.value,
                        textColor: buttonController.textColor.value,
                        text: "Next",
                        icon: ProjectIcons.arrowRight(
                          color: HexaColor(buttonController.iconColor.value),
                          size: 21.42,
                        ),
                        onPressed: () {
                          Get.to(() => PhoneInputWidget());
                        }),
                  ]),
            ),
          )),
    );
  }
}
