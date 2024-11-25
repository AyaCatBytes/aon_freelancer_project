import 'package:aon_freelancer_project/view/styles/app_colors.dart';
import 'package:aon_freelancer_project/view/styles/app_text_styles.dart';
import 'package:aon_freelancer_project/view/widgets/custom_progress_indicator.dart';
import 'package:aon_freelancer_project/view/widgets/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/filter_controller.dart';
class BottomSheetFilterExample extends StatelessWidget {
  final FilterController filterController = Get.put(FilterController());



  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);

    return Scaffold(
      appBar: AppBar(title: Text('Filter Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showFilterBottomSheet(screenSize),
          child: Text('Show Filter Bottom Sheet'),
        ),
      ),
    );
  }
  void showFilterBottomSheet(ScreenSize screenSize) {
    Get.bottomSheet(
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35.0)),
      ),
      Obx(()=>
         Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              //this is the header with Fillter projects text +++++++++++++++++++++++++++++++++++++++
              Column(
                children: [
                  //prograss indexter one
                  CustomProgressIndicator(
                      color: AppColors.GrayForPE, height: screenSize.height(5), width:screenSize.width(64) ),
                  //space
                  SizedBox(
                    height: screenSize.height(24),
                  ),


                  // x buttom and filter projects text ++++++++++++++++++++++++++++++++

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(Icons.close),
                        color: AppColors.mediumGrey,
                      ),
                      //space
                      SizedBox(
                        width: screenSize.width(75),
                      ),
                      Text(

                        'Filter Projects',
                        style: AppTextStyles.postNameText,
                      ),
                    ],
                  ),
                ],
              ),
              //space
              SizedBox(
                height: screenSize.height(5),
              ),
              // checkBox list++++++++++++++++++++++++++++++++++++++++++++++++++++++

              Column(
                children: filterController.itemFilter.keys.map((filter) {
                  return ListTile(
                    leading: Checkbox(
                      value: filterController.itemFilter[filter],
                      onChanged: (bool? value) {
                        filterController.toggleFilter(filter, value ?? false);
                      },

                      //check box border color and shape++++++++++++++++++


                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color:AppColors.checkBoxColor, width: 0.5),
                      ),
                      //checkbox color and filling++++++++++++++++++++++++

                      checkColor: Colors.white,
                      activeColor:AppColors.checkBoxColor,

                    ),
                    title: Text(filter),
                  );
                }).toList(),
              ),

              SizedBox(height: 16.0),
              // Buttons +++++++++++++++++++++++++++++++++++
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //cancel sort button+++++++++++++++++++++++++++++++++++
                  TextButton(
                    onPressed: () {
                      filterController.itemFilter.updateAll((key, value) => false);

                      Get.back();

                    },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      side: BorderSide(color: AppColors.primary),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    ),
                    child: Text('Cancel Sort',style:AppTextStyles.primaryColorFilter ,),
                  ),
                  SizedBox(width: 30,),


                  //the apply button++++++++++++++++++++++++++++++++++++
                  ElevatedButton(
                    onPressed: () {
                      //filter logic here


                      //change the color of filter bottom
                      Get.back();
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor:AppColors.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                    child: Text('   Apply   ',style:AppTextStyles.whiteColorFilter ,),
                  ),
                ],
              ),
            ],
          ),
                 ),
      ),

    );
  }
}