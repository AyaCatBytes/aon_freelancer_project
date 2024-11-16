

import 'package:get/get.dart';

class CardController extends GetxController{

  RxString borderColorFreelancer="BFBFBF".obs;
  RxString iconColorFreelancer="0A0A0A".obs;
  RxString backgroundColorFreelancer="FFFFFF".obs;

  RxString borderColorClient="BFBFBF".obs;
  RxString iconColorClient="0A0A0A".obs;
  RxString backgroundColorClient="FFFFFF".obs;
  RxString cardtype ="".obs;


  void selectedCard(String cardType){

    if (backgroundColorClient.value == 'FFFFFF' && cardType =="c" ) {

      //change to blue
      setClient("3C97AF", "3C97AF", "ECF6F9");
      //change to white
      setFreelancer("BFBFBF", "0A0A0A", "FFFFFF");


    } else if  (backgroundColorClient.value == '3C97AF' && cardType =="c" ){
      //change to white
      setClient("BFBFBF", "0A0A0A", "FFFFFF");
      //change to blue
      setFreelancer("3C97AF", "3C97AF", "ECF6F9");
    }else if (backgroundColorFreelancer.value == 'FFFFFF' && cardType =="f" ) {

      //change to blue
      setFreelancer("3C97AF", "3C97AF", "ECF6F9");
      //change to white
      setClient("BFBFBF", "0A0A0A", "FFFFFF");


    } else if  (backgroundColorFreelancer.value == '3C97AF' && cardType =="c" ){
      //change to white
      setFreelancer("BFBFBF", "0A0A0A", "FFFFFF");
      //change to blue
      setClient("3C97AF", "3C97AF", "ECF6F9");
    }
  }


  //to ease setting values for freelancer and client varibles
  void setFreelancer(String border,String icon,String background){
    borderColorFreelancer.value=border;
    iconColorFreelancer.value=icon;
    backgroundColorFreelancer.value=background;
  }
  void setClient(String border,String icon,String background){
    borderColorClient.value = border;
    iconColorClient.value =icon ;
    backgroundColorClient.value = background;
  }






}