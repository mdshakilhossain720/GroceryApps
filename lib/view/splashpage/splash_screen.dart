import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/color.dart';
import 'package:groceryproject/view/utility/image_path.dart';

import '../BottomNavBar/bottom_navbar.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TColor.splashColor,
        body: Center(
          child: Image.asset(ImagePath.splashLogo),
        ));
  }
}
