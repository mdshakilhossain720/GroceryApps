import 'package:flutter/material.dart';
import 'package:groceryproject/view/BottomNavBar/bottom_navbar.dart';
import 'package:groceryproject/view/signup/sign_up.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import '../components/button_resuable.dart';
import '../number_page/number_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 45),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(ImagePath.appLogo,height: 55,width: 47,)),
                SizedBox(height: 90),
                Text("Sign Up",style: TTextStyle.loginText),
                Text("Enter your emails and password",style: TTextStyle. loginSubTitle),
                SizedBox(height: 15,),
                Text("Email",style: TTextStyle.loginEmail),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'imshuvo97@gmail.com',
                    hintStyle: TextStyle(
                      color: Color(0xff181725),
                      fontSize: 18,
                    ),
            
                  ),
            
                ),
                SizedBox(height: 12,),
                Text("Password",style:TTextStyle.loginEmail),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '*******',
                    hintStyle: TextStyle(
                      color: Color(0xff181725),
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
            
                  ),
            
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>NumberPage()));
                  }, child:Text("Forgot Password?",style:TTextStyle.loginPassworForget )),
                ),
                SizedBox(height: 14,),
                ButtonResuable(title: 'Log In', ontab: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomNavBar()));
                },),
                SizedBox(height:40,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account? ',
                        style: TTextStyle. loginsing,
                        children: <TextSpan>[

                          TextSpan(text: 'Singup', style:TTextStyle.llogin),

                        ],
                      ),
                    ),
                  ),
                )
            
            
              ],
            ),
          ),
        ),
      ),

    );
  }
}
