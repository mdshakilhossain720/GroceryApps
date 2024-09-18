

import 'package:flutter/material.dart';

SizedBox sizedBoxH(double height){
  return SizedBox(height: height);
}

SizedBox sizedBoxW(double width){
  return SizedBox(width: width);
}

Size size(context){
  return MediaQuery.sizeOf(context);
}