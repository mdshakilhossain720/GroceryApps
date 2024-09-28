
import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import '../Beverages/beverages_screen.dart';
import '../expole_search_page/expoler_search_page.dart';

class ExpolerSearch extends StatelessWidget {
  const ExpolerSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ExpolerSearchPage()));
                    },

                    child: Text("Find Products",style: TTextStyle.findProduct),
                  ),
                ),
                SizedBox(height: 20,),
            

                   InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_)=>ExpolerSearchPage()));
                     },
                     child: Container(
                      height: 51,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F3F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.none,

                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Search Store',
                          hintStyle: TextStyle(
                            color: Color(0xff7C7C7C),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )
                        ),
                      ),
                                       ),
                   ),


                SizedBox(height: 16,),
            
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                 // padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,

                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>BeveragesScreen()));
                      },
                      child: Container(

                        height: 189,
                        width: 174,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:Color(0xffeef7f1),
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(
                            color: Color(0xff9dd2b0),width: 1,

                          )

                        ),

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagePath.ba,height: 74,width: 111,),
                            SizedBox(height: 6,),
                            Text("Frash Fruits & Vegetable",
                              textAlign: TextAlign.center,
                              style: TTextStyle.searchText)
                          ],
                        )
                      ),
                    ),
                    Container(

                        height: 189,
                        width: 174,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:Color(0xfffef6ed),
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(
                              color: Color(0xfffbce9c),width: 1,

                            )

                        ),

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagePath.ba,height: 74,width: 111,),
                            SizedBox(height: 6,),
                            Text("Frash Fruits & Vegetable",
                              textAlign: TextAlign.center,
                              style:TTextStyle.searchText)
                          ],
                        )
                    ),
                    Container(

                        height: 189,
                        width: 174,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:Color(0xffffde8e4),
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(
                              color: Color(0xfffbcec6),width: 1,

                            )

                        ),

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagePath.ba,height: 74,width: 111,),
                            SizedBox(height: 6,),
                            Text("Frash Fruits & Vegetable",
                              textAlign: TextAlign.center,
                              style: TTextStyle.searchText)
                          ],
                        )
                    ),
                    Container(

                        height: 189,
                        width: 174,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:Color(0xfffef6ed),
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(
                              color: Color(0xffdec4e8),width: 1,

                            )

                        ),

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagePath.ba,height: 74,width: 111,),
                            SizedBox(height: 6,),
                            Text("Frash Fruits & Vegetable",
                              textAlign: TextAlign.center,
                              style: TTextStyle.searchText)
                          ],
                        )
                    ),
                    Container(

                        height: 189,
                        width: 174,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:Color(0xfffff8e5),
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(
                              color: Color(0xfffef0c8),width: 1,

                            )

                        ),

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagePath.ba,height: 74,width: 111,),
                            SizedBox(height: 6,),
                            Text("Frash Fruits & Vegetable",
                              textAlign: TextAlign.center,
                              style: TTextStyle.searchText)
                          ],
                        )
                    ),
                    Container(

                        height: 189,
                        width: 174,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:Color(0xffedf7fc),
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(
                              color: Color(0xffc9e7f7),width: 1,

                            )

                        ),

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagePath.ba,height: 74,width: 111,),
                            SizedBox(height: 6,),
                            Text("Frash Fruits & Vegetable",
                              textAlign: TextAlign.center,
                              style:TTextStyle.searchText)
                          ],
                        )
                    ),





                  ],
                )
            
            
              ],
            ),
          ),
        ),
      ),

    );
  }
}
