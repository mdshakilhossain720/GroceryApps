import 'package:flutter/material.dart';
import 'package:groceryproject/view/login/login.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

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
                Text("Sign Up",style: TTextStyle.signin),
                Text("Enter your emails and password",style: TTextStyle.signinEmail),
                SizedBox(height: 15,),
                Text("Username",style: TTextStyle.signinEma),
                SizedBox(height: 3,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Afsar Hossen Shuvo',
                    hintStyle: TTextStyle.afsar,

                  ),

                ),
                SizedBox(height: 15,),
                Text("Email",style: TTextStyle.email),
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
                Text("Password",style:TTextStyle.password),
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
                    style:TTextStyle.continues,
                    children: <TextSpan>[

                       TextSpan(text: 'Terms of Service \n', style: TTextStyle.term),
                       TextSpan(text: 'and ', style:TTextStyle.and ),
                      TextSpan(text: 'Privacy Policy.', style: TTextStyle.privacy),

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
                        style: TTextStyle.wrong,
                        children:  <TextSpan>[

                          TextSpan(text: 'Singup', style:TTextStyle.psing),

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
