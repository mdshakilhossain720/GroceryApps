import 'package:flutter/material.dart';
import 'package:groceryproject/view/homepage/home_page.dart';
import 'package:groceryproject/view/onboarding/widgets/background.dart';
import 'package:groceryproject/view/utility/color.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import '../BottomNavBar/bottom_navbar.dart';
import '../components/custom_button.dart';
import '../login/login.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackGround(
            child: Center(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 330,),
                  Image.asset(
                    ImagePath.onBoardingLogo,
                    height: 56,
                    width: 48,
                  ),
                  Text("Welcome\n to our store",
                      textAlign: TextAlign.center, style: TTextStyle.onBoardingTitle),
                  Text("Ger your groceries in as fast as one hour",
                      textAlign: TextAlign.center, style: TTextStyle.onBoardingSmall),
                  SizedBox(height: 40,),

                  CustomButton(title: 'Get Started', onTab: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginPage()));

                  },)
                ],
              ),
            )));
  }
}


