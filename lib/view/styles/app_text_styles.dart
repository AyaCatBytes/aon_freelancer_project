import 'package:flutter/material.dart';
import 'app_colors.dart';


class AppTextStyles {
  static TextStyle heading1 = TextStyle(
    color:  AppColors.black,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins',
  );

  static  TextStyle heading2 = TextStyle(
    color:  AppColors.subThings,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins'
  );

  static  TextStyle cardTitle = TextStyle(
    color:AppColors.subHeading,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  static  TextStyle cardSubtitle = TextStyle(
    color: AppColors.subThings,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );
  static  TextStyle hintText = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
  );
  static  TextStyle inputLabel = TextStyle(
    color: AppColors.subHeading,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );

  static  TextStyle countryCode = TextStyle(
    color: AppColors.subHeading,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );

  static  TextStyle verficationCode = TextStyle(
    color: AppColors.primary,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static  TextStyle timer= TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
  );
  static  TextStyle timerText = TextStyle(
    color: AppColors.mediumGreyLighterShade,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );

  static  TextStyle timerButton= TextStyle(
    color: AppColors.primary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );

  static  TextStyle mainButtonEnabled= TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Exo',
  );

  static  TextStyle mainButtonDisabled= TextStyle(
    color: AppColors.mediumGrey,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Exo',
  );


}
