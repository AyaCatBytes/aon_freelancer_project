import 'package:aon_freelancer_project/view/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

import '../../../util/icons.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/screen_size.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: AppColors.homeBackground,
      body: Container(
          height: screenSize.height(808),
          width: screenSize.width(393),
          //color: Colors.pink,
          color: AppColors.homeBackground,
          padding: EdgeInsets.only(left:screenSize.width(32) , right: screenSize.width(32),top: screenSize.height(20) ,bottom:  screenSize.height(20)),

          child: ListView(
            children: [
              //space
              SizedBox(
                height: screenSize.height(15),
              ),

              //header container profine and notification button---------------------------------------
              Container(
                height: screenSize.height(55),
                width: screenSize.width(350),
                //  color: Colors.green,
                color: AppColors.homeBackground,
                padding: EdgeInsets.zero,

                //row of header elements
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: ProjectIcons.arrowLeft(
                            size: 28, color: AppColors.black)),

                    SizedBox(width: 5),

                    Text(
                      "Profile",
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
                        shape: BoxShape.circle,
                        // Ensures the container is circular
                        color: AppColors.white, // Background color
                      ),
                      width: 55, // Set the fixed size for width
                      height: 55, // Set the fixed size for height
                      child: InkWell(
                        onTap: () {
                          print('Image tapped');
                        },
                        borderRadius: BorderRadius.circular(100),
                        // Match circular design
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

              //profile +name+ profishin+++++++++++++++++++++++++++++++++=
              Column(
                children: [

                  Container(
                    height: screenSize.height(100),
                    width: screenSize.width(100),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primary, // Change border color
                          width: 2.0, // Border width
                        ),
                        color: Colors.deepPurple[100],
                        shape: BoxShape.circle),
                    

                  ),
                  //space
                  SizedBox(
                    height: screenSize.height(8),
                  ),

                  Text(
                    "Client name",
                    style: AppTextStyles.settingsHeaderText,
                  ),

                  //space
                  SizedBox(
                    height: screenSize.height(3),
                  ),

                  Text(
                    "Business Scope",
                    style: AppTextStyles.profeshine,
                  ),
                ],
              ),
              //space
              SizedBox(
                height: screenSize.height(32),
              ),

              //about++++++++++++++++++++++++++++++++++++

              Container(
                height: screenSize.height(143),
                width: screenSize.width(345),
                padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width(10),
                    vertical: screenSize.height(5)),
                decoration: BoxDecoration(
                  color: AppColors.primarySettingsList,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    //about text and edite buttom++++++++++++++++++++++++++++++
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          "About",
                          style: AppTextStyles.about,
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: ProjectIcons.edit(
                                size: 20, color: AppColors.black))
                      ],
                    ),

                    SizedBox(
                      width: screenSize.width(225),
                      child: Text(
                        "GreenTech Solutions Inc.Renewable Energy & Technology San Francisco, California, with operations in North America and Europe",
                        style: AppTextStyles.aboutBody,
                        overflow: TextOverflow.visible,
                      ),
                    ),

                    //
                  ],
                ),
              ),
              //space
              SizedBox(
                height: screenSize.height(16),
              ),

              //project history++++++++++++++++++++++++++++++
              Container(
                height: screenSize.height(340),
                width: screenSize.width(345),
                padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width(10),
                    vertical: screenSize.height(5)),
                decoration: BoxDecoration(
                  color: AppColors.primarySettingsList,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    //project info
                    Column(
                      children: [
                        //project  text ,+, and edite buttom++++++++++++++++++++++++++++++
                        Row(
                          children: [
                            //project history text+++++++++++++++++++=
                            Text(
                              "Projects History",
                              style: AppTextStyles.about,
                            ),
                            //(+) buttom +++++++++++++++++++++++++++
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: ProjectIcons.plusSign(
                                  size: 20, color: AppColors.black),
                            ),

                            //edite buttom++++++++++++++++++++++++++
                            IconButton(
                              onPressed: () {},
                              icon: ProjectIcons.edit(
                                  size: 20, color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //the line ui +++++++++++++++++++++++++++++++++
                            sideLine(screenSize),

                            //space
                            SizedBox(
                              width: screenSize.width(12),
                            ),

                            //the content of the project column++++++++++++++++++++
                            Column(
                             // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //project name++++++++++++++++++++++++++++

                                Text(
                                  textAlign: TextAlign.start,
                                  "project Name",
                                  style: AppTextStyles.postHeading,
                                ),
                                //space
                                SizedBox(
                                  height: screenSize.height(3),
                                ),
                                //project date++++++++++++++++++++++++++++++++
                                Text(
                                  "22 Jan 2024 - 11 May  2024. ",
                                  style: AppTextStyles.cardSubtitle,
                                ),
                                //space
                                SizedBox(
                                  height: screenSize.height(12),
                                ),

                                //project description++++++++++++++++++++++++++++
                                SizedBox(
                                  width: screenSize.width(225),
                                  child: Text(
                                    "Developed a task management web application designed to help users organize, prioritize, and track their daily tasks efficiently.  ",
                                    style: AppTextStyles.projectBody,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),

                                //the date+++++++++++++++++++++++++
                              ],
                            )
                          ],
                        ),

                        //
                      ],
                    ),
                    //space
                    SizedBox(
                      height: screenSize.height(16),
                    ),

                    //copy 2
                    Column(
                      children: [
                        //project  text ,+, and edite buttom++++++++++++++++++++++++++++++
                        Row(
                          children: [
                            //project text+++++++++++++++++++=
                            Text(
                              "Projects History",
                              style: AppTextStyles.about,
                            ),
                            //(+) buttom +++++++++++++++++++++++++++
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: ProjectIcons.plusSign(
                                  size: 20, color: AppColors.black),
                            ),

                            //edite buttom++++++++++++++++++++++++++
                            IconButton(
                              onPressed: () {},
                              icon: ProjectIcons.edit(
                                  size: 20, color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //the line ui +++++++++++++++++++++++++++++++++
                            sideLine(screenSize),

                            //space
                            SizedBox(
                              width: screenSize.width(12),
                            ),

                            //the content of the project column++++++++++++++++++++
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //project name++++++++++++++++++++++++++++

                                Text(
                                  "project Name",
                                  style: AppTextStyles.postHeading,
                                ),
                                //space
                                SizedBox(
                                  height: screenSize.height(3),
                                ),
                                //project date++++++++++++++++++++++++++++++++
                                Text(
                                  "22 Jan 2024 - 11 May  2024. ",
                                  style: AppTextStyles.cardSubtitle,
                                ),
                                //space
                                SizedBox(
                                  height: screenSize.height(12),
                                ),

                                //project description++++++++++++++++++++++++++++
                                SizedBox(
                                  width: screenSize.width(225),
                                  child: Text(
                                    "Developed a task management web application designed to help users organize, prioritize, and track their daily tasks efficiently.  ",
                                    style: AppTextStyles.projectBody,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),

                                //the date+++++++++++++++++++++++++
                              ],
                            )
                          ],
                        ),

                        //
                      ],
                    ),
                  ],
                ),
              ),


            ],
          )),
    );
  }

  Widget sideLine(ScreenSize screenSize) {
    return Container(
       padding: EdgeInsets.only(top :screenSize.height(5)),
      child: Column(

        children: [
          //circle ui+++++++++++++++++++++++++++++
          Container(
           // padding: EdgeInsets.only(top :screenSize.height(6)),
            height: screenSize.height(12),
            width: screenSize.width(12),
            decoration:
                BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          ),

          //space
          SizedBox(
            height: screenSize.height(2),
          ),
          //vertical line ui++++++++++++++++++++++++

          CustomProgressIndicator(
              color: AppColors.primary,
              height: screenSize.height(90),
              width: screenSize.width(1.5)),
        ],
      ),
    );
  }
}
