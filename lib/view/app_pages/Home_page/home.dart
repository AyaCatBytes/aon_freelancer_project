import 'package:aon_freelancer_project/util/icons.dart';
import 'package:aon_freelancer_project/view/styles/app_colors.dart';
import 'package:aon_freelancer_project/view/styles/app_text_styles.dart';
import 'package:aon_freelancer_project/view/widgets/hexa_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/filter_controller.dart';
import '../../widgets/custom_progress_indicator.dart';
import '../../widgets/screen_size.dart';

class Home extends StatelessWidget {
   Home({super.key});
   final FilterController filterController = Get.put(FilterController());


  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: AppColors.homeBackground,
      body: Container(
        height: screenSize.height(708),
        width: screenSize.width(393),
        //color: Colors.pink,
        color: AppColors.homeBackground,

        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width(32), vertical: screenSize.height(24)),
        child: ListView(
            children: [
        //space
        SizedBox(
        height: screenSize.height(30),
      ),

      //header container---------------------------------------
      Container(
        height: screenSize.height(55),
        width: screenSize.width(345),
        //  color: Colors.green,
        color: AppColors.homeBackground,

        //row of header elements

        child: Row(
          children: [
            //profile photo ----------------------
           Container(
              height: screenSize.height(55),
              width: screenSize.width(55),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  shape: BoxShape.circle),
            ),
            //space
            SizedBox(
              width: screenSize.width(5),
            ),

            //name + type of the rigisterer
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //full name
                Text(
                  "Abdulla Ali",
                  style: AppTextStyles.cardTitle,
                ),

                //type of the register pearson
                Text(
                  "Client",
                  style: AppTextStyles.cardSubtitle,
                ),
              ],
            ),
            //space to the end
            const Spacer(),

            //the notification button

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
                color: AppColors.white,
              ),
              width: 55,
              height: 55,
              child: InkWell(
                onTap: () {
                  print('Image tapped');
                },
                borderRadius: BorderRadius.circular(100),
                child: Center(
                  child: Image.asset(
                    "assets/images/notification.png",
                    width: 25, // Adjust image size as needed
                    height: 25,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

      //space
      SizedBox(
        height: screenSize.height(32),
      ),

      // searching and fillter

      Container(
        height: screenSize.height(48),
        width: screenSize.width(345),
        //  color: Colors.green,
        color: AppColors.homeBackground,

        //row of searching and fillter

        child: Row(
          children: [
            //search TextFiled

            Expanded(
              flex: 16,
              child: Container(
                height: screenSize.height(48),
                width: screenSize.width(285),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadow.withOpacity(1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],


                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    // controller: textController,
                    style: AppTextStyles.searchText,
                    cursorColor: AppColors.primary,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,

                    decoration: InputDecoration(
                      hintText: "search",
                      hintStyle: AppTextStyles.searchText,

                        prefixIcon:Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            'assets/images/search_2.png',
                            width: 5,
                            height: 5,
                              color: AppColors.darkGrey
                          ),
                        ),

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),

            const Spacer(),



            //the fillter button

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
              ),

              child:   GetX<FilterController>(
                builder: (filterController) =>  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.white,
                      fixedSize: const Size(48, 48),
                      shape: RoundedRectangleBorder(
                       side:BorderSide(color: filterController.borderColor.value,width:1.1 ),
                        borderRadius: BorderRadius.circular(16),
                      ),


                    ),
                    onPressed: () {
                      //call the bottom sheet fillter+++++++++++++++
                      showFilterBottomSheet(screenSize);
                    },
                    icon: ProjectIcons.filterHorizontal(
                        size: 26, color:filterController.iconColor.value)),
              ),
            )
          ],
        ),
      ),
              //space
              SizedBox(
                height: screenSize.height(18),
              ),

      //content of project posts  (1)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      Center(
        child: Container(
            height: screenSize.height(420),
            width: screenSize.width(345),
            decoration: BoxDecoration(

              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow.withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],

            ),

            child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                // Profile Section++++++++++++++++++++++++++++++++++++++++++
                Container(
                  height: screenSize.height(50),
                  width: screenSize.width(50),
                  decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      shape: BoxShape.circle),
                ),
                SizedBox( width: screenSize.width(12)),


                // Name and Posted Time++++++++++++++++++++++++++++++++++++++++++++++
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //full name
                    Text(
                      "Client Name",
                      style: AppTextStyles. postNameText,
                    ),

                    //type of the register pearson
                    Text(
                      "Posted 2 hours ago",
                      style: AppTextStyles.postTimeText,
                    ),
                  ],
                ),


                const Spacer(),

                // Availability+++++++++++++++++++++++++++++++++++++++++++++
                Container(
                  width: screenSize.width(92),
                  height: screenSize.height(35),
                  padding: EdgeInsets.symmetric(horizontal:screenSize.width(8) , vertical: screenSize.height(4)),
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Available',
                      style: AppTextStyles.avilableText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:screenSize.height(16) ),
            // Job Title and Description
            Text(
              'Looking for Full-Stack Developer with experience +2 years',
              style: AppTextStyles.postHeading,
            ),
            SizedBox(height: 8),
            Text(
              'to build a responsive, user-focused  web  application.  Must be skilled in both front-end and back-end development...',
              style:AppTextStyles.postTextBody,
            ),



            SizedBox(height:screenSize.height(16)),
            // Image Section++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

               Image.asset(
                'assets/images/image_2.png', // Replace with your image asset

                width: double.infinity,
                fit: BoxFit.cover,
              ),

            SizedBox(height:screenSize.height(16)),
            // the cute Action Buttons+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            Row(
              children: [
                Row(
                  children: [
                    ProjectIcons.favorite(size: 24 ,color: AppColors.black),

                    SizedBox(width:screenSize.width(4) ),
                    Text('like',style: AppTextStyles.actionButtonsText,),

                    SizedBox(width:screenSize.width(50)),

                    ProjectIcons.message(size: 24 ,color: AppColors.black),
                    SizedBox(width:screenSize.width(4) ),
                    Text('comment',style: AppTextStyles.actionButtonsText,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    ),
              SizedBox(
                height: screenSize.height(24),
              ),

              //content of project posts   (2)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              Center(
                child: Container(
                  height: screenSize.height(420),
                  width: screenSize.width(345),
                  decoration: BoxDecoration(

                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            // Profile Section++++++++++++++++++++++++++++++++++++++++++
                            Container(
                              height: screenSize.height(50),
                              width: screenSize.width(50),
                              decoration: BoxDecoration(
                                  color: AppColors.darkGrey,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox( width: screenSize.width(12)),


                            // Name and Posted Time++++++++++++++++++++++++++++++++++++++++++++++
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //full name
                                Text(
                                  "Client Name",
                                  style: AppTextStyles. postNameText,
                                ),

                                //type of the register pearson
                                Text(
                                  "Posted 2 hours ago",
                                  style: AppTextStyles.postTimeText,
                                ),
                              ],
                            ),


                            const Spacer(),

                            // Availability+++++++++++++++++++++++++++++++++++++++++++++
                            Container(
                              width: screenSize.width(92),
                              height: screenSize.height(35),
                              padding: EdgeInsets.symmetric(horizontal:screenSize.width(8) , vertical: screenSize.height(4)),
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  'Available',
                                  style: AppTextStyles.avilableText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:screenSize.height(16) ),
                        // Job Title and Description
                        Text(
                          'Looking for Full-Stack Developer with experience +2 years',
                          style: AppTextStyles.postHeading,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'to build a responsive, user-focused  web  application.  Must be skilled in both front-end and back-end development...',
                          style:AppTextStyles.postTextBody,
                        ),



                        SizedBox(height:screenSize.height(16)),
                        // Image Section++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                        Image.asset(
                          'assets/images/image_2.png', // Replace with your image asset

                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),

                        SizedBox(height:screenSize.height(16)),
                        // the cute Action Buttons+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                        Row(
                          children: [
                            Row(
                              children: [
                                ProjectIcons.favorite(size: 24 ,color: AppColors.black),

                                SizedBox(width:screenSize.width(4) ),
                                Text('like',style: AppTextStyles.actionButtonsText,),

                                SizedBox(width:screenSize.width(50)),

                                ProjectIcons.message(size: 24 ,color: AppColors.black),
                                SizedBox(width:screenSize.width(4) ),
                                Text('comment',style: AppTextStyles.actionButtonsText,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height(24),
              ),
              //content of project posts (3)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              Center(
                child: Container(
                  height: screenSize.height(420),
                  width: screenSize.width(345),
                  decoration: BoxDecoration(

                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            // Profile Section++++++++++++++++++++++++++++++++++++++++++
                            Container(
                              height: screenSize.height(50),
                              width: screenSize.width(50),
                              decoration: BoxDecoration(
                                  color: AppColors.darkGrey,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox( width: screenSize.width(12)),


                            // Name and Posted Time++++++++++++++++++++++++++++++++++++++++++++++
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //full name
                                Text(
                                  "Client Name",
                                  style: AppTextStyles. postNameText,
                                ),

                                //type of the register pearson
                                Text(
                                  "Posted 2 hours ago",
                                  style: AppTextStyles.postTimeText,
                                ),
                              ],
                            ),


                            const Spacer(),

                            // Availability+++++++++++++++++++++++++++++++++++++++++++++
                            Container(
                              width: screenSize.width(92),
                              height: screenSize.height(35),
                              padding: EdgeInsets.symmetric(horizontal:screenSize.width(8) , vertical: screenSize.height(4)),
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  'Available',
                                  style: AppTextStyles.avilableText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:screenSize.height(16) ),
                        // Job Title and Description
                        Text(
                          'Looking for Full-Stack Developer with experience +2 years',
                          style: AppTextStyles.postHeading,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'to build a responsive, user-focused  web  application.  Must be skilled in both front-end and back-end development...',
                          style:AppTextStyles.postTextBody,
                        ),



                        SizedBox(height:screenSize.height(16)),
                        // Image Section++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                        Image.asset(
                          'assets/images/image_2.png', // Replace with your image asset

                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),

                        SizedBox(height:screenSize.height(16)),
                        // the cute Action Buttons+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                        Row(
                          children: [
                            Row(
                              children: [
                                ProjectIcons.favorite(size: 24 ,color: AppColors.black),

                                SizedBox(width:screenSize.width(4) ),
                                Text('like',style: AppTextStyles.actionButtonsText,),

                                SizedBox(width:screenSize.width(50)),

                                ProjectIcons.message(size: 24 ,color: AppColors.black),
                                SizedBox(width:screenSize.width(4) ),
                                Text('comment',style: AppTextStyles.actionButtonsText,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height(24),
              ),

              //content of project posts   (4)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              Center(
                child: Container(
                  height: screenSize.height(420),
                  width: screenSize.width(345),
                  decoration: BoxDecoration(

                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            // Profile Section++++++++++++++++++++++++++++++++++++++++++
                            Container(
                              height: screenSize.height(50),
                              width: screenSize.width(50),
                              decoration: BoxDecoration(
                                  color: AppColors.darkGrey,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox( width: screenSize.width(12)),


                            // Name and Posted Time++++++++++++++++++++++++++++++++++++++++++++++
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //full name
                                Text(
                                  "Client Name",
                                  style: AppTextStyles. postNameText,
                                ),

                                //type of the register pearson
                                Text(
                                  "Posted 2 hours ago",
                                  style: AppTextStyles.postTimeText,
                                ),
                              ],
                            ),


                            const Spacer(),

                            // Availability+++++++++++++++++++++++++++++++++++++++++++++
                            Container(
                              width: screenSize.width(92),
                              height: screenSize.height(35),
                              padding: EdgeInsets.symmetric(horizontal:screenSize.width(8) , vertical: screenSize.height(4)),
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  'Available',
                                  style: AppTextStyles.avilableText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:screenSize.height(16) ),
                        // Job Title and Description
                        Text(
                          'Looking for Full-Stack Developer with experience +2 years',
                          style: AppTextStyles.postHeading,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'to build a responsive, user-focused  web  application.  Must be skilled in both front-end and back-end development...',
                          style:AppTextStyles.postTextBody,
                        ),



                        SizedBox(height:screenSize.height(16)),
                        // Image Section++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                        Image.asset(
                          'assets/images/image_2.png', // Replace with your image asset

                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),

                        SizedBox(height:screenSize.height(16)),
                        // the cute Action Buttons+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                        Row(
                          children: [
                            Row(
                              children: [
                                ProjectIcons.favorite(size: 24 ,color: AppColors.black),

                                SizedBox(width:screenSize.width(4) ),
                                Text('like',style: AppTextStyles.actionButtonsText,),

                                SizedBox(width:screenSize.width(50)),

                                ProjectIcons.message(size: 24 ,color: AppColors.black),
                                SizedBox(width:screenSize.width(4) ),
                                Text('comment',style: AppTextStyles.actionButtonsText,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
    //
    ],


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

                 GetX<FilterController>(
                   builder: (filterController) =>  Column(
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
                         filterController.filterremove();

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
                         filterController.filterAppled();


                         //go out
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


     );
   }



}
