import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'apps.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}


