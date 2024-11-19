import 'package:aon_freelancer_project/controller/button_controller.dart';
import 'package:aon_freelancer_project/view/registration/acount_type.dart';
import 'package:aon_freelancer_project/widgets/poppins_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/card_controller.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/card_container.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/custom_text2_widget.dart';
import '../../widgets/custom_text_widget.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/three_pi.dart';
import 'package:aon_freelancer_project/util/icons.dart';

class PhoneInputWidget extends StatelessWidget {
  PhoneInputWidget({super.key});

  TextEditingController phoneFT_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final buttonController = Get.find<ButtonController>();
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      body: Obx(() => SingleChildScrollView(
          child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                  horizontal: screenSize.width(24),
                  vertical: screenSize.height(48)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //the progress indicator-----------------
                    const ThreePi(
                        color1: "3C97AF", color3: "BFBFBF", isHalfHalfPI: true),

                    //space
                    SizedBox(
                      height: screenSize.height(30),
                    ),

                    //Enter Your Phone Number-----------------------------
                    const CustomText2Widget(
                      text: "Enter Your Phone Number",
                      color: "000000",
                      size: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),

                    //space
                    SizedBox(
                      height: screenSize.height(13),
                    ),

                    //sub title --------------------------------

                    const CustomText2Widget(
                      text:
                          "Enter your phone number to verify your identity and the validity of your number to safely activate your account on the platform.",
                      color: "999999",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins',
                    ),
                    //space
                    SizedBox(
                      height: screenSize.height(47),
                    ),

                    //phone Number- text-----------------------------------------------

                    const CustomText2Widget(
                      text: "Phone Number",
                      color: "0A0A0A",
                      size: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                    //space
                    SizedBox(
                      height: screenSize.width(10),
                    ),

                    //row for phone +   contruy code------------------------

                    Row(children: [
                      //container for phone prifex-------------------
                      Container(
                          width: screenSize.width(90.98),
                          height: screenSize.height(48),
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width(10),
                              vertical: screenSize.height(10)),
                          decoration: BoxDecoration(
                            color: HexaColor("FFFFFF"),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: HexaColor("BFBFBF")),
                          ),

                          //row to add image of flag and the country code----------
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                //image -----------------

                                Image.asset(
                                  "assets/images/flag_image.jpg",
                                  // width: 300,
                                  // height: 400,
                                  // fit: BoxFit.cover,
                                ),

                                //space
                                SizedBox(
                                  width: screenSize.width(10),
                                ),

                                //the contry code----------
                                CustomText2Widget(
                                  text: "+946",
                                  color: "0A0A0A",
                                  size: 14,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Poppins',
                                ),
                              ])),
                      //space
                      SizedBox(
                        width: screenSize.width(8),
                      ),

                      //container for the textFromfiled phone number------------

                      Expanded(
                        child: TextFormField(


                          controller: phoneFT_controller,
                          keyboardType: TextInputType.phone,
                          cursorColor: HexaColor("3C97AF"),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 14.50, horizontal: 15.0),
                            //the hinttext style-----------------
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            label: const CustomTextWidget(
                              text: "EnterYourPhoneNumber",
                              color: "D9D9D9",
                              size: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Poppins',
                            ),

                            //the border style------------------------

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: HexaColor("3C97AF"), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: HexaColor("BFBFBF"), width: 1),
                            ),
                          ),
                        ),
                      ),
                    ]),

                    //space
                    SizedBox(
                      height: screenSize.height(290),
                    ),

                    //Next button----------------------------

                    ButtonWidget(
                        buttonColor: buttonController.buttonColor.value,
                        textColor: buttonController.textColor.value,
                        text: "Send verification code",
                        onPressed: () {
                          buttonController.whenSelectingCard();
                          Get.to(() => AcountType());
                          print(buttonController.buttonColor.value);
                        }),
                  ])))),
    );
  }
}
