import 'package:flutter/material.dart';
import 'package:groceryproject/view/BottomNavBar/bottom_navbar.dart';
import 'package:groceryproject/view/signup/sign_up.dart';
import 'package:groceryproject/view/utility/image_path.dart';

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
                Text("Sign Up",style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff030303),
            
                ),),
                Text("Enter your emails and password",style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7C7C7C),
                ),),
                SizedBox(height: 15,),
                Text("Email",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),),
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
                Text("Password",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),),
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
                  }, child:Text("Forgot Password?",style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff181725),
                  ),)),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),

                        ),
                        children: const <TextSpan>[

                          TextSpan(text: 'Singup', style: TextStyle(
                            fontSize: 14,
                            fontWeight:FontWeight.w600,
                            color: Color(0xff53B175),
                          )),

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
