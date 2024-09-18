import 'package:flutter/material.dart';

import '../../utility/image_path.dart';

class GroceriesResuble extends StatelessWidget {
  const GroceriesResuble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 248,
      decoration: BoxDecoration(
        color: Color(0xffF8A44C).withOpacity(0.15),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(ImagePath.chaldal,height: 70,width: 70),
            SizedBox(width: 15,),
            Text("Pulses",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),)
          ],
        ),
      ),
    );
  }
}