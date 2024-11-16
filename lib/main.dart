
import 'package:aon_freelancer_project/view/registration/acount_type.dart';
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
      initialBinding: MyBindings(),
      home:AcountType(),
    );
  }
}
