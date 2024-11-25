

import 'package:aon_freelancer_project/test.dart';
import 'package:aon_freelancer_project/view/app_pages/Home_page/create_project.dart';
import 'package:aon_freelancer_project/view/app_pages/Home_page/home.dart';
import 'package:aon_freelancer_project/view/app_pages/Home_page/price_Project.dart';
import 'package:aon_freelancer_project/view/app_pages/Home_page/profile.dart';
import 'package:aon_freelancer_project/view/app_pages/Home_page/settings.dart';
import 'package:aon_freelancer_project/view/app_pages/registration/acount_type.dart';
import 'package:aon_freelancer_project/view/app_pages/registration/sign_up_widget.dart';
import 'package:aon_freelancer_project/view/app_pages/registration/verify_phone_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/my_bindings.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        fontFamily: "Poppins",
      ),
      initialBinding: MyBindings(),

      home:SignUpWidget(),
    );
  }
}