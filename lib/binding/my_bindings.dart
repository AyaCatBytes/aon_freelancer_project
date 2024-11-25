



import 'package:aon_freelancer_project/controller/button_controller.dart';
import 'package:aon_freelancer_project/controller/card_controller.dart';
import 'package:get/get.dart';

import '../controller/filter_controller.dart';
import '../controller/phone_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CardController(),permanent: true);
    Get.put(ButtonController(),permanent: false);
    Get.put(PhoneController(),permanent: false);
    Get.put(FilterController());

  }
}