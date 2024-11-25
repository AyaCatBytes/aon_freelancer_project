import 'package:aon_freelancer_project/controller/button_controller.dart';
import 'package:aon_freelancer_project/view/app_pages/registration/verify_phone_number.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/card_container.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/custom_text2_widget.dart';
import '../../widgets/custom_text_widget.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/three_pi.dart';
import 'package:aon_freelancer_project/util/icons.dart';

import 'acount_type.dart';

class PhoneInputWidget extends StatelessWidget {
  PhoneInputWidget({super.key});

  TextEditingController phoneFT_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final buttonController = Get.find<ButtonController>();
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor:AppColors.homeBackground,
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
                     ThreePi(
                        color1: AppColors.primary, color3: AppColors.darkGrey, isHalfHalfPI: true),

                    //space
                    SizedBox(
                      height: screenSize.height(30),
                    ),

                    //Enter Your Phone Number-----------------------------
                    Text(
                      "Enter Your Phone Number",
                      style: AppTextStyles.heading1,
                    ),


                    //space
                    SizedBox(
                      height: screenSize.height(13),
                    ),

                    //sub title --------------------------------
                    Text(
                      "Enter your phone number to verify your identity and the validity of your number to safely activate your account on the platform.",
                      style: AppTextStyles.heading2,
                    ),


                    SizedBox(
                      height: screenSize.height(47),
                    ),

                    //phone Number- text-----------------------------------------------
                    Text(
                      "Phone Number",
                      style: AppTextStyles.inputLabel,
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
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.darkGrey),
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
                                Text(
                                  "+946",
                                  style: AppTextStyles.countryCode,
                                ),


                              ])),
                      //space
                      SizedBox(
                        width: screenSize.width(8),
                      ),

                      //container for the textFromfiled phone number------------

                      SizedBox(
                        height: screenSize.height(48), width: screenSize.width(246.02),
                        child: TextFormField(


                          controller: phoneFT_controller,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.primary,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            //the hinttext style-----------------
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            label:   Text(
                              "EnterYourPhoneNumber",
                              style: AppTextStyles.hintText,
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
                          Get.to(() => VerifyPhoneNumber());
                          print(buttonController.buttonColor.value);
                        }),
                  ])))),
    );
  }
}
