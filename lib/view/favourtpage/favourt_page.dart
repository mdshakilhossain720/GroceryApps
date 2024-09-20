
import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import '../components/button_resuable.dart';

class FavourtPage extends StatelessWidget {
  const FavourtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text("Favorurite",style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff181725),
                  ),),
                ),
                SizedBox(height:15,),
                Divider(),
                SizedBox(height:15,),
                ListView.separated(
                  itemCount: 8,
                  shrinkWrap: true,
                  
                  itemBuilder: (BuildContext context, int index) { 
                    return Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/image/speed.png",height: 54,width: 30),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text("Sprite Can",style: TTextStyle.favourBolText),
                            Text("325ml, Price",style: TTextStyle.favourt),

                          ],
                        ),
                        Spacer(),
                        Text("\$1.50",style:TTextStyle.favourPrices),
                        SizedBox(width: 4,),
                        Icon(Icons.arrow_forward_ios,size: 14,color: Color(0xff181725),),
                        //Image.asset("assets/logo/arrow.png",height: 14,),
                      ],
                    );

                  }, separatorBuilder: (BuildContext context, int index) {
                    return Divider();

                },
                  
                ),
                SizedBox(height: 15,),
                Divider(),
                SizedBox(height: 25,),
                ButtonResuable(title: 'Add All To Cart', ontab: () {},)

            
              ],
            ),
          ),
        ),
      ),

    );
  }
}


