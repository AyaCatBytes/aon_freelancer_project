import 'package:get/get.dart';

import '../view/styles/app_colors.dart';

class FilterController extends GetxController {
  var iconColor = AppColors.darkGrey.obs;
   var borderColor = AppColors.white.obs;


  var itemFilter = <String, bool>{
    'UI/UX Designer': false,
    'Full Stack Developer': false,
    'Front-end Developer': false,
    'Back-end Developer': false,
    'Mobile Developer': false,
  }.obs;

  void toggleFilter(String key, bool value) {
    itemFilter[key] = value;
  }


  void filterAppled() {

    iconColor.value = AppColors.primary;
    borderColor.value= AppColors.primary;
  }


  void filterremove() {

    iconColor.value = AppColors.darkGrey;
    borderColor.value=AppColors.white;
  }
}