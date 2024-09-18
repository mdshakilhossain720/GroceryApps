

import 'package:get/get.dart';

import 'view/state_holder/bottom_nav_bar_controller.dart';



class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavBarController());
  }


}