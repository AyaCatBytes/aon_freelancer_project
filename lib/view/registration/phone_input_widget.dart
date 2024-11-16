import 'package:aon_freelancer_project/controller/button_controller.dart';
import 'package:aon_freelancer_project/widgets/poppins_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controller/card_controller.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/custom_text2_widget.dart';
import '../../widgets/custom_text_widget.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/three_pi.dart';
import 'package:aon_freelancer_project/util/icons.dart';




class PhoneInputWidget extends StatelessWidget {

   PhoneInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final  controller =Get.find<CardController>();
    final  buttonController =Get.find<ButtonController>();
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      body: Container(
        // color: Colors.white,
        //padding: EdgeInsets.only(top: screenSize.height(10)),
        margin: EdgeInsets.symmetric(
            horizontal: screenSize.width(24), vertical: screenSize.height(48)),
        child:Obx(
    () =>Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //the progress indicator-----------------
              const ThreePi(
                  color1: "BFBFBF", color2: "3C97AF", color3: "BFBFBF"),

              //space
              SizedBox(
                height: screenSize.height(30),
              ),

              //title  lets Go---------------------------
              const CustomText2Widget(
                text: "Enter Your Phone Number",
                color: "000000",
                size: 32,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),

              //space
              SizedBox(
                height: screenSize.height(13),
              ),

              //sub title --------------------------------

              const CustomTextWidget(
                text: "How do you plan to use this platform",
                color: "999999",
                size: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Poppins',
              ),

              //space
              SizedBox(
                height: screenSize.height(45),
              ),



              //space
              SizedBox(
                height: screenSize.height(16),
              ),

              //Client card----------------------------
              CardWidget(
                iconWidget: ProjectIcons.userSearch(color: HexaColor( controller.iconColorClient.value), size: 22.0),
                titleText: const CustomTextWidget(
                  text: "Client",
                  color: "0A0A0A",
                  size: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'
                ),
                subTitleText: const CustomTextWidget(
                  text: "I’m a client searching for talented freelancers",
                  color: "999999",
                  size: 11.7,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),cardType: "c",
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
            onPressed: (){ }
          ),
]
              ),)
),



    );
  }
}
