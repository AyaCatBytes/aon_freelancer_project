

import 'package:aon_freelancer_project/view/app_pages/Home_page/price_Project.dart';
import 'package:aon_freelancer_project/view/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/icons.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/three_pi.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});
  @override
  Widget build(BuildContext context) {


    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor:AppColors.homeBackground,
      body: SingleChildScrollView(
        child: Container(
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
                color3: AppColors.primary,
              ),
              SizedBox(height: screenSize.height(30)),

              // Title
              Text(
                "Enter Your \n Information",
                style: AppTextStyles.heading1,
              ),
              SizedBox(height: screenSize.height(10)),

              // Subtitle
              Text(
                "Please enter your personal information to complete the registration process.",
                style: AppTextStyles.heading2,
              ),




            ],
          ),
        ),

      ),
    );
  }


}
