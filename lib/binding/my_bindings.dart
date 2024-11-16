



import 'package:aon_freelancer_project/controller/button_controller.dart';
import 'package:aon_freelancer_project/controller/card_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CardController(),permanent: true);
    Get.put(ButtonController(),permanent: true);

  }
}