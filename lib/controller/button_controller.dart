

import 'package:get/get.dart';

class ButtonController extends GetxController{

  RxString buttonColor="EBEBEB".obs;
  RxString textColor="999999".obs;
  RxString iconColor="999999".obs;


  void whenSelectingCard(){
    buttonColor.value="3C97AF";
    textColor.value="FFFFFF";
    iconColor.value="FFFFFF";
  }





}