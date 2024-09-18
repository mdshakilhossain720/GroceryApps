import 'package:flutter/material.dart';

import '../location/location.dart';

class ButtonResuable extends StatelessWidget {
  const ButtonResuable({
    super.key, required this.title, required this.ontab,
  });
  final String title;
  final VoidCallback ontab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontab,
      child: Container(
        alignment: Alignment.center,
        height: 67,
        width: 364,
        decoration: BoxDecoration(
          color: Color(0xff53B175),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Text(title,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFF9FF)
        ),),
      ),
    );
  }
}