
import 'package:flutter/material.dart';
import '../../widgets/custom_text2_widget.dart';
import '../../widgets/screen_size.dart';
import '../../widgets/three_pi.dart';


class VerifyPhoneNumber extends StatelessWidget {
  const VerifyPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {

    ScreenSize screenSize = ScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      body:  SingleChildScrollView(
          child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                  horizontal: screenSize.width(24),
                  vertical: screenSize.height(48)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //the progress indicator-----------------
                    const ThreePi(
                        color1: "3C97AF",  color2: "3C97AF",color3: "BFBFBF"),


                    //space
                    SizedBox(
                      height: screenSize.height(30),
                    ),

                    //Enter Your Phone Number-----------------------------
                    const CustomText2Widget(
                      text: "Verify phone Number",
                      color: "000000",
                      size: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),

                    //space
                    SizedBox(
                      height: screenSize.height(10),
                    ),

                    //sub title --------------------------------

                    const CustomText2Widget(
                      text:
                      "Enter the verification code sent to +9647700000000 via WhatsApp",
                      color: "999999",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins',
                    ),
                    //space
                    SizedBox(
                      height: screenSize.height(47),
                    ),


                    //Verify button----------------------------

                  ]))),
    );
  }
}
