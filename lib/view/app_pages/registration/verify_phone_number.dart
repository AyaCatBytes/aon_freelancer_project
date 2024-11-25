import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../util/icons.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/three_pi.dart';
import 'package:aon_freelancer_project/controller/phone_controller.dart';

class VerifyPhoneNumber extends StatelessWidget {
  const VerifyPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PhoneController()); // Instantiate PhoneController

    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor:AppColors.homeBackground,
      body: SingleChildScrollView(
        child: Obx(()=>Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(
              horizontal: screenSize.width(24),
              vertical: screenSize.height(48),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Progress Indicator
                ThreePi(
                  color1: AppColors.primary,
                  color2: AppColors.primary,
                  color3: AppColors.darkGrey,
                ),
                SizedBox(height: screenSize.height(30)),

                // Title
                Text(
                  "Verify Phone Number",
                  style: AppTextStyles.heading1,
                ),
                SizedBox(height: screenSize.height(10)),

                // Subtitle
                Text(
                  "Enter the verification code sent to +9647700000000 via WhatsApp",
                  style: AppTextStyles.heading2,
                ),
                SizedBox(height: screenSize.height(47)),

                // Input Fields
                Form(
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        inputTFF(screenSize, controller.textController1, controller.isFilled1.value),
                        inputTFF(screenSize, controller.textController2, controller.isFilled2.value),
                        inputTFF(screenSize, controller.textController3, controller.isFilled3.value),
                        inputTFF(screenSize, controller.textController4, controller.isFilled4.value),
                        inputTFF(screenSize, controller.textController5, controller.isFilled5.value),
                        inputTFF(screenSize, controller.textController6, controller.isFilled6.value),
                      ],
                    ),

                ),
                SizedBox(height: screenSize.height(47)),

                // Timer and Resend Option
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProjectIcons.clock(
                            color: AppColors.primary,
                            size: 25,
                          ),
                          Text(
                            "00:00",
                            style: AppTextStyles.timer,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't receive a message? ",
                            style: AppTextStyles.timerText,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {
                              // Resend action
                            },
                            child: Text(
                              "Resend",
                              style: AppTextStyles.timerButton,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenSize.height(290),
                ),
                // Verify Button
                Center(
                  child: SizedBox(
                    width: 345, // Set the width of the button
                    height: 50, // Set the height of the button
                    child: TextButton(
                      onPressed: controller.isAllFilled.value
                          ? () {
                        // Action when all fields are filled
                        print("Verification code submitted.");
                      }
                          : null, // Disable button when not all fields are filled
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0), // Rounded corners
                        ),
                        padding: EdgeInsets.zero, // Remove any default padding
                        backgroundColor: controller.isAllFilled.value
                            ? AppColors.primary
                            : AppColors.disable,
                      ),
                      child: Text(
                        "Verify",
                        style: controller.isAllFilled.value
                            ? AppTextStyles.mainButtonEnabled
                            : AppTextStyles.mainButtonDisabled,
                      ),
                    ),
                  ),
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }

  // Custom Input Field Widget
  Widget inputTFF(ScreenSize screenSize, TextEditingController textController, bool isFilled) {
    return SizedBox(
      height: screenSize.height(48),
      width: screenSize.width(48),
      child: TextFormField(
        controller: textController,
        style: AppTextStyles.verficationCode,
        cursorColor: AppColors.primary,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          filled: isFilled,
          fillColor: AppColors.secondary,
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: isFilled ? AppColors.primary : AppColors.darkGrey,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: isFilled ? AppColors.primary : AppColors.darkGrey,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
