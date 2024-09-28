
import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/text_style.dart';


class ResendCode extends StatelessWidget {
  const ResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios,size: 18,)),
              SizedBox(height:45,),
              Text("Enter your 4-digit code",style:TTextStyle.resend),
              Text("Code",style:TTextStyle.resendcode),
              SizedBox(height: 5,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '---'
                ),
              ),
              SizedBox(height: 125,),
              InkWell(
                onTap: (){

                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 67,
                    width: 67,
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      shape: BoxShape.circle,

                    ),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                ),
              )


            ],
          ),
        ),
      ),

    );
  }
}
