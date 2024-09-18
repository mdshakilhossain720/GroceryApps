import 'package:flutter/material.dart';


import 'package:groceryproject/view/utility/image_path.dart';
class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    final Size screensize=MediaQuery.of(context).size;
    return  Stack(
      children: [
        Image.asset(ImagePath.onBoarding,height: screensize.height,
          width: screensize.width,fit: BoxFit.cover,),
        child
      ],
    );
  }
}