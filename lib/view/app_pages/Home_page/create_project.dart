import 'package:aon_freelancer_project/view/app_pages/Home_page/price_Project.dart';
import 'package:aon_freelancer_project/view/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/dropdown_controller.dart';
import '../../../util/icons.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/hexa_color.dart';
import '../../widgets/screen_size.dart';

class CreateProject extends StatelessWidget {
   CreateProject({super.key});


  final DropdownController controller = Get.put(DropdownController());

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
            // width: screenSize.width(350),
            //  color: Colors.green,

            color: AppColors.homeBackground,
            padding: EdgeInsets.zero,

            //row of header elements (< )+ header create a project
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
                  color: AppColors.darkGrey,
                  height: screenSize.height(6.3),
                  width: screenSize.width(164.5))
            ],
          ),

          //space
          SizedBox(
            height: screenSize.height(40),
          ),

          //Project Name- text-----------------------------------------------
          Text(
            "Project Name",
            style: AppTextStyles.inputLabel,
          ),
          //space
          SizedBox(
            height: screenSize.height(5),
          ),

          // textFormFiled  project name ------------__________________________

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
                  "Add your project name",
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

          //Select Required Qualifications- text-----------------------------------------------
          Text(
            "Select Required Qualifications",
            style: AppTextStyles.inputLabel,
          ),

          //space
          SizedBox(
            height: screenSize.height(5),
          ),

          //textFormFiled   Select Required.... ------------__________________________

          //
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 16),
          //   decoration: BoxDecoration(
          //     border: Border.all(color:AppColors.darkGrey),
          //     borderRadius: BorderRadius.circular(8.0),
          //     color: Colors.white,
          //   ),
          //   child: Obx(() => DropdownMenu<String>(
          //     initialSelection: controller.selectedValue.value,
          //     onSelected: (value) {
          //       controller.setSelectedValue(value!);
          //     },
          //     dropdownMenuEntries: controller.options
          //         .map(
          //           (option) => DropdownMenuEntry<String>(
          //         value: option,
          //         label: option,
          //       ),
          //     )
          //         .toList(),
          //     inputDecorationTheme: const InputDecorationTheme(
          //       border: InputBorder.none,
          //     ),
          //     menuStyle: MenuStyle(fixedSize:
          //
          //
          //     ),
          //
          //     ),
          //
          //     trailingIcon:Row(
          //       mainAxisSize: MainAxisSize.min,
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children:  [
          //         Spacer(),
          //         ProjectIcons.arrowDown(color: AppColors.darkGrey,size: 21),
          //       ],
          //     ),
          //   )
          // ),
          //



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
                  "Select option",
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

          //Description- text-----------------------------------------------
          Text(
            "Description",
            style: AppTextStyles.inputLabel,
          ),
          //space
          SizedBox(
            height: screenSize.height(5),
          ),

          //textFormFiled  description.... ------------__________________________

          SizedBox(
            height: screenSize.height(207),
            width: screenSize.width(246.02),
            child: TextFormField(
              // controller: phoneFT_controller,
              keyboardType: TextInputType.text,
              cursorColor: AppColors.primary,
              maxLines: 9,
              minLines: 9,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                //the hinttext style-----------------
                floatingLabelBehavior: FloatingLabelBehavior.never,
                alignLabelWithHint: true,
                label: Text(
                  "Enter Description for the project",
                  textAlign: TextAlign.start,
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
            height: screenSize.height(140),
          ),

          Row(children: [
            //’media button++++++++++++++++++++++++++++++++
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                shape: BoxShape.circle,
                // Ensures the container is circular
                color: AppColors.white, // Background color
              ),
              // width: 55,
              // height: 55,

              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(16.0), // rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProjectIcons.media(
                      color: AppColors.primary,
                      size: 21.42,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Media",
                      style: AppTextStyles.mediaButomText,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenSize.width(48),
            ),

            //Next button++++++++++++++++++++++++++++++++
            TextButton(
              onPressed: () {
                Get.to(() => PriceProject());
              },
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0), // rounded corners
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 70),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next",
                    style: AppTextStyles.mainButtonEnabled,
                  ),
                  const SizedBox(width: 8.0),
                  ProjectIcons.arrowRight(
                    color: AppColors.white,
                    size: 21.42,
                  ),
                ],
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
