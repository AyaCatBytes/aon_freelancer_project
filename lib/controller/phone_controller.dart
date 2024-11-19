import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneController extends GetxController {
  var isFilled1 = false.obs;
  var isFilled2 = false.obs;
  var isFilled3 = false.obs;
  var isFilled4 = false.obs;
  var isFilled5 = false.obs;
  var isFilled6 = false.obs;
  var isAllFilled=false.obs;


  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();
  final TextEditingController textController4 = TextEditingController();
  final TextEditingController textController5 = TextEditingController();
  final TextEditingController textController6 = TextEditingController();


  @override
  void onInit() {
    super.onInit();

    // Add listeners to detect changes in text fields
    textController1.addListener(_checkFields);
    textController2.addListener(_checkFields);
    textController3.addListener(_checkFields);
    textController4.addListener(_checkFields);
    textController5.addListener(_checkFields);
    textController6.addListener(_checkFields);
  }

  void _checkFields() {
    // Update individual field status
    isFilled1.value = textController1.text.isNotEmpty;
    isFilled2.value = textController2.text.isNotEmpty;
    isFilled3.value = textController3.text.isNotEmpty;
    isFilled4.value = textController4.text.isNotEmpty;
    isFilled5.value = textController5.text.isNotEmpty;
    isFilled6.value = textController6.text.isNotEmpty;

    // Check if all fields are filled
    isAllFilled.value = isFilled1.value &&
        isFilled2.value &&
        isFilled3.value &&
        isFilled4.value &&
        isFilled5.value &&
        isFilled6.value;
  }

  @override
  void onClose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    textController4.dispose();
    textController5.dispose();
    textController6.dispose();
    super.onClose();
  }
}