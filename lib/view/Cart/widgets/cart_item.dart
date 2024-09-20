import 'package:flutter/material.dart';

import '../../utility/text_style.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [


          Image.asset("assets/image/apple.png",height: 70,width: 64,),
          SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bell Pepper Red",style: TTextStyle.cartText),
              Text("1kg, Price",style: TTextStyle.cartTextSmall),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(

                      border: Border.all(
                        color: Color(0xffF0F0F0),
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Icon(Icons.minimize,color: Color(0xffB3B3B3),size: 30,),
                  ),
                  SizedBox(width: 9,),
                  Text("1",style: TTextStyle. cartOne),SizedBox(width: 10,),
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(

                      border: Border.all(
                        color: Color(0xffF0F0F0),
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Icon(Icons.add,color: Color(0xff53B175),size: 30,),
                  ),
                ],
              )

            ],
          ),
          Spacer(),

          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.clear,size: 25,color: Color(0xffB3B3B3),),
              SizedBox(height: 45,),

              Text("\$4.99",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Gilroy',
              ),)
            ],
          ),


        ],

      ),


    );
  }
}