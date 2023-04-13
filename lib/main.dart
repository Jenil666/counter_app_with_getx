import 'package:counter_app_with_getx/screen/home/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => HomeScreen(),
      },
    ),
  );
}