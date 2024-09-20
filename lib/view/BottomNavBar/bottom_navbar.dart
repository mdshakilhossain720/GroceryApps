

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryproject/view/homepage/home_page.dart';
import 'package:groceryproject/view/utility/color.dart';

import '../Cart/cart_page.dart';
import '../expolersearch/expoler_search.dart';
import '../favourtpage/favourt_page.dart';
import '../state_holder/bottom_nav_bar_controller.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  final BottomNavBarController bottomNavBarController=Get.find<BottomNavBarController>();
  int selectIndex = 0;
  List<Widget>screen=[
    HomePage(),
    ExpolerSearch(),
    CartPage(),
    FavourtPage(),
   // Container(),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavBarController>(builder: (_){
        return screen[bottomNavBarController.selectIndex];
      }),
      bottomNavigationBar: GetBuilder<BottomNavBarController>(
        builder: (_) {
          return BottomNavigationBar(
            backgroundColor: Color(0xffFFFFFF),
              elevation: 3,
              //fixedColor: Colors.white,
              type: BottomNavigationBarType.fixed,

              currentIndex: bottomNavBarController.selectIndex,
              // onTap: (index){
              //   if (index >= 0 && index < screen.length) {
              //     setState(() {
              //       selectIndex = index;
              //     });
              //   }
              // },

              onTap: bottomNavBarController.changeIndex,
              selectedItemColor: TColor.splashColor,
              unselectedItemColor: Colors.grey,
              //showSelectedLabels: true,

              

              items: [
                BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: 'shop'),
                BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Explore'),
                BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label:'Cart'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Favourite'),
                //BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),

              ]);
        },

      ),

    );
  }
}