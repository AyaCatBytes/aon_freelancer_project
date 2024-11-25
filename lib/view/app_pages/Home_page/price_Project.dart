

import 'package:aon_freelancer_project/view/app_pages/Home_page/price_Project.dart';
import 'package:aon_freelancer_project/view/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/icons.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/screen_size.dart';

class PriceProject extends StatelessWidget {
  const PriceProject({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: AppColors.homeBackground,

      //main containerd+++++++++++++++++++++++++++++++++++++++++
      body: Container(
        height: screenSize.height(808),
        width: screenSize.width(393),
        //color: Colors.pink,
        color: AppColors.homeBackground,
        padding: EdgeInsets.only(
            left: screenSize.width(24),
            right: screenSize.width(24),
            top: screenSize.height(20),
            bottom: screenSize.height(20)),

        child: ListView(children: [
          //header container create a project and back  button---------------------------------------
          Container(
            height: screenSize.height(55),

            color: AppColors.homeBackground,
            padding: EdgeInsets.zero,

            //row of header elements (<)+ header create a project
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //the back button+++++++++++++++++++++
                IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: ProjectIcons.arrowLeft(
                        size: 28, color: AppColors.black)),

                SizedBox(width: 5),
                //header create a project ++++++++++++++++++++++++++

                Text(
                  "Create a project",
                  style: AppTextStyles.settingsHeaderText,
                ),
              ],
            ),
          ),
          //space
          SizedBox(
            height: screenSize.height(10),
          ),

          //prograss endecater +++++++++++++++++++++++++++++++++++++++
          Row(
            children: [
              CustomProgressIndicator(
                  color: AppColors.primary,
                  height: screenSize.height(6.3),
                  width: screenSize.width(164.5)),
              SizedBox(
                width: screenSize.width(10),
              ),
              CustomProgressIndicator(
                  color: AppColors.primary,
                  height: screenSize.height(6.3),
                  width: screenSize.width(164.5))
            ],
          ),

          //space
          SizedBox(
            height: screenSize.height(40),
          ),

          //Project Duration- text-----------------------------------------------
          Text(
            "Project Duration",
            style: AppTextStyles.inputLabel,
          ),
          //space
          SizedBox(
            height: screenSize.height(5),
          ),

          // textFormFiled  Duration of the project ------------__________________________

          SizedBox(
            height: screenSize.height(48),
            width: screenSize.width(246.02),
            child: TextFormField(
              // controller: phoneFT_controller,
              keyboardType: TextInputType.text,
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                //the hinttext style-----------------
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Text(
                  "Duration of the project",
                  style: AppTextStyles.hintText,
                ),

                //the border style------------------------

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: AppColors.primary, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: AppColors.darkGrey, width: 1),
                ),
              ),
            ),
          ),

          //space
          SizedBox(
            height: screenSize.height(10),
          ),

          //Price of The Project- text-----------------------------------------------
          Text(
            "Price of The Project",
            style: AppTextStyles.inputLabel,
          ),
          //space
          SizedBox(
            height: screenSize.height(5),
          ),

          //textFormFiled  Enter Price... ------------__________________________

          SizedBox(
            height: screenSize.height(48),
            width: screenSize.width(246.02),
            child: TextFormField(
              // controller: phoneFT_controller,
              keyboardType: TextInputType.text,
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                //the hinttext style-----------------
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Text(
                  "Enter Price",
                  style: AppTextStyles.hintText,
                ),

                //the border style------------------------

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: AppColors.primary, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: AppColors.darkGrey, width: 1),
                ),
              ),
            ),
          ),


          //space to the end
          //space
          SizedBox(
            height: screenSize.height(screenSize.height(335) ),
          ),


            //Next button++++++++++++++++++++++++++++++++
            TextButton(
              onPressed: () {
               // Get.to(() => PriceProject());
              },
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0), // rounded corners
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Project",
                    style: AppTextStyles.mainButtonEnabled,
                  ),
                  const SizedBox(width: 8.0),
                  ProjectIcons.plusSign(
                    color: AppColors.white,
                    size: 21.42,
                  ),


          ]),),
        ]


      ),
      ),
    );
  }
}
