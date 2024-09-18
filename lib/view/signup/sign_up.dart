import 'package:flutter/material.dart';
import 'package:groceryproject/view/login/login.dart';
import 'package:groceryproject/view/utility/image_path.dart';

import '../components/button_resuable.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                Text("Username",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),),
                SizedBox(height: 3,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Afsar Hossen Shuvo',
                    hintStyle: TextStyle(
                      color: Color(0xff181725),
                      fontSize: 18,
                    ),

                  ),

                ),
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
                SizedBox(height: 9,),
                RichText(
                  text: TextSpan(
                    text: 'By continuing you agree to our ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),

                    ),
                    children: const <TextSpan>[

                      TextSpan(text: 'Terms of Service \n', style: TextStyle(
                        fontSize: 14,
                        fontWeight:FontWeight.w600,
                        color: Color(0xff53B175),
                      )),
                      TextSpan(text: 'and ', style: TextStyle(
                        fontSize: 14,
                        fontWeight:FontWeight.w600,
                        color: Color(0xff181725),
                      )),
                      TextSpan(text: 'Privacy Policy.', style: TextStyle(
                        fontSize: 14,
                        fontWeight:FontWeight.w600,
                        color: Color(0xff53B175),
                      )),

                    ],
                  ),
                ),

                SizedBox(height: 20,),
                ButtonResuable(title: 'Sing Up', ontab: () {},),
                SizedBox(height:40,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()));
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
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
