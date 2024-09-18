
import 'package:flutter/material.dart';
import 'package:groceryproject/view/components/size_box.dart';
import 'package:groceryproject/view/utility/color.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import '../location/location.dart';
import '../product_details/product_details.dart';
import 'widgets/carcuel_slider.dart';
import 'widgets/container_reusble.dart';
import 'widgets/groceries_resuble.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Image.asset(ImagePath.appLogo),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>LocationPage()));
                        },
                          child: Icon(Icons.location_on)),
                      Text("Dhaka, Banassre",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: TColor.black12Color,
                      ),)
                    ],
                  ),
                  sizedBoxH(10),
                  Container(
                    height: 51,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: TColor.searchColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Store',
                        hintStyle: TextStyle(
                          color: TColor.textHinColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
              
                      ),
                    ),
                  ),
                  sizedBoxH(20),
                  CaruelSlider(),
                  sizedBoxH(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exclusive Offer",style: TTextStyle.rowTitle),
                      Text("See all",style: TTextStyle.rowTitleColor),
                      
                    ],
                  ),
                  sizedBoxH(12),
              
              
              
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
              
                        itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails()));
                        },
                          child: ContainerResuable());
              
                    }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 15,),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best Selling",style: TTextStyle.rowTitle),
                      Text("See all",style: TTextStyle.rowTitleColor),
              
                    ],
                  ),
                  sizedBoxH(12),
              
              
              
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
              
                      itemBuilder: (context,index){
                        return ContainerResuable();
              
                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Groceries",style: TTextStyle.rowTitle),
                      Text("See all",style: TTextStyle.rowTitleColor),

                    ],
                  ),
                  sizedBoxH(12),
                  SizedBox(
                    height: 105,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return  GroceriesResuble();

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),

                  SizedBox(height: 15,),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return ContainerResuable();

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 15,),



              
              
              
              
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}




