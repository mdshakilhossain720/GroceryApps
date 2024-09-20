import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import 'components/button_resuable.dart';

class Filtterpage extends StatelessWidget {
  const Filtterpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.clear_sharp,color: Color(0xff181725),),
                  SizedBox(width: 110,),
                  Text("Filters",style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff181725),
                    fontFamily: 'Gilroy',
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),

                  ),
                  color: Color(0xffF2F3F2),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Text("Categories",style:TTextStyle.fillterHeadText),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Container(
                            height: 24,width: 24,
                            decoration: BoxDecoration(
                              color: Color(0xff53B175),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.check,color: Color(0xffFCFCFC),size: 14,),

                          ),
                          SizedBox(width: 8,),
                          Text("Eggs",style:TTextStyle.fillterSmallText ),

                        ],
                      ),
                      SizedBox(height: 12,),
                      FillterRowResuable(title: 'Noodles & Pasta',),
                      SizedBox(height: 12,),
                      FillterRowResuable(title: 'Chips & Crisps',),
                      SizedBox(height: 12,),
                      FillterRowResuable(title: 'Fast Food',),
                      SizedBox(height: 12,),
                      Text("Brand",style:TTextStyle.fillterHeadText),
                      SizedBox(height: 12,),
                      FillterRowResuable(title: 'Individual Callection',),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Container(
                            height: 24,width: 24,
                            decoration: BoxDecoration(
                              color: Color(0xff53B175),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.check,color: Color(0xffFCFCFC),size: 14,),

                          ),
                          SizedBox(width: 8,),
                          Text("Cocola",style:TTextStyle.fillterSmallText ),

                        ],
                      ),
                      SizedBox(height: 12,),

                      FillterRowResuable(title: 'Ifad',),
                      SizedBox(height: 12,),
                      FillterRowResuable(title: 'Kazi Farmas',),
                      SizedBox(height: 100,),
                      ButtonResuable(title: 'Apply Filter', ontab: () {},)





                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}

class FillterRowResuable extends StatelessWidget {
  const FillterRowResuable({
    super.key, required this.title,
  });
  final String title;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,width: 24,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              color: Color(0xffB1B1B1),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          //child: Icon(Icons.check,color: Color(0xffFCFCFC),size: 14,),

        ),
        SizedBox(width: 8,),
        Text(title,style:TTextStyle.fillterwhiteText ),

      ],
    );
  }
}
