
import 'package:aon_freelancer_project/util/icons.dart';
import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/screen_size.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});


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
              height: screenSize.height(15),
            ),

            //header container settings and notification button---------------------------------------
            Container(
              height: screenSize.height(55),
              width: screenSize.width(345),
              //  color: Colors.green,
              color: AppColors.homeBackground,

              //row of header elements

              child: Row(
                children: [


                      Text(
                        "Settings",
                        style: AppTextStyles.settingsHeaderText,
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
                      shape: BoxShape.circle, // Ensures the container is circular
                      color: AppColors.white, // Background color
                    ),
                    width: 55, // Set the fixed size for width
                    height: 55, // Set the fixed size for height
                    child: InkWell(
                      onTap: () {
                        print('Image tapped');
                      },
                      borderRadius: BorderRadius.circular(100), // Match circular design
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

            //list of settings+++++++++++++++++++++++++++++++++++++++++++++++++
      Container(
          height: screenSize.height(272),
          width: screenSize.width(345),
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width(16), vertical: screenSize.height(16)),
        decoration: BoxDecoration(

          color: AppColors.primarySettingsList,
          borderRadius: BorderRadius.circular(12),


        ),




          child:Column(
            children: [
              Row(
                children: [

                //the icon  +++++++++++++++++++++++++++++
                  Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    width: 42,
                    height: 42,
                    child: Center(child: ProjectIcons.userCircle(size: 24,color:AppColors.primary )),
                  ),

                  //space
                  SizedBox(
                    width: screenSize.width(10),
                  ),

                  // the name
                  Text(
                    "account setting",
                    style: AppTextStyles.settingsList,
                  ),

                  //space to the end

                  const Spacer(),

                 IconButton(onPressed: (){},

                     icon: ProjectIcons.arrowRight(size: 25,color: AppColors.black))


                ],
              ),

              //space
              SizedBox(
                height: screenSize.height(20),
              ),

              Row(
                children: [

                  //the icon  +++++++++++++++++++++++++++++
                  Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    width: 42,
                    height: 42,
                    child: Center(child: ProjectIcons.securityLock(size: 24,color:AppColors.primary )),
                  ),

                  //space
                  SizedBox(
                    width: screenSize.width(10),
                  ),

                  // the name
                  Text(
                    "privacy & security",
                    style: AppTextStyles.settingsList,
                  ),

                  //space to the end

                  const Spacer(),

                  IconButton(onPressed: (){},

                      icon: ProjectIcons.arrowRight(size: 25,color: AppColors.black))


                ],
              ),
              //space
              SizedBox(
                height: screenSize.height(20),
              ),
              Row(
                children: [

                  //the icon  +++++++++++++++++++++++++++++
                  Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    width: 42,
                    height: 42,
                    child: Center(child: ProjectIcons.languageCircle(size: 24,color:AppColors.primary )),
                  ),

                  //space
                  SizedBox(
                    width: screenSize.width(10),
                  ),

                  // the name
                  Text(
                    "language",
                    style: AppTextStyles.settingsList,
                  ),

                  //space to the end

                  const Spacer(),

                  IconButton(onPressed: (){},

                      icon: ProjectIcons.arrowRight(size: 25,color: AppColors.black))


                ],
              ),
              //space
              SizedBox(
                height: screenSize.height(20),
              ),

              Row(
                children: [

                  //the icon  +++++++++++++++++++++++++++++
                  Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    width: 42,
                    height: 42,
                    child: Center(child: ProjectIcons.paintBoard(size: 24,color:AppColors.primary )),
                  ),

                  //space
                  SizedBox(
                    width: screenSize.width(10),
                  ),

                  // the name
                  Text(
                    "appearance",
                    style: AppTextStyles.settingsList,
                  ),

                  //space to the end

                  const Spacer(),

                  IconButton(onPressed: (){},

                      icon: ProjectIcons.arrowRight(size: 25,color: AppColors.black))


                ],
              ),
            ],
          ),),




    ]


      ),

    ),


    );
  }






}
