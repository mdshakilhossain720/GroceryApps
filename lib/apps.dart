import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryproject/view/splashpage/splash_screen.dart';

import 'bindings.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      home: SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFFFFFF),
      ),


    );
  }
}
