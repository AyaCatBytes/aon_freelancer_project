

import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedValue = 'Front-end'.obs;
  final List<String> options = ['UI/UX Designer', 'Back-end', 'Front-end', 'Mobile app'];

  void setSelectedValue(String value) {
    selectedValue.value = value;
  }
}