import 'package:flutter/material.dart';

import '../utility/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, required this.onTab,
  });
  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 300,
      child: ElevatedButton(
          onPressed:onTab,
          style: ElevatedButton.styleFrom(
              backgroundColor: TColor.splashColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              )),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: TColor.whiteColor,
            ),
          )),
    );
  }
}