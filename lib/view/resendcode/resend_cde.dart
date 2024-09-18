
import 'package:flutter/material.dart';


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
              Text("Enter your 4-digit code",style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),),
              Text("Code",style: TextStyle(
                fontSize: 16,
                color: Color(0xff7C7C7C),

              ),),
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
