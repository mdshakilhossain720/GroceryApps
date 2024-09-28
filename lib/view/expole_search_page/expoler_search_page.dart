import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import '../Beverages/beverages_screen.dart';
import '../filtterPage.dart';
import '../homepage/widgets/container_reusble.dart';

class ExpolerSearchPage extends StatelessWidget {
  const ExpolerSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(

                      height: 51,

                      width:300,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F3F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.clear_sharp,
                              size: 18,
                              color: Color(0xffFFFFFF),
                            ),
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            hintText: 'Egg',
                            hintStyle: TTextStyle.egg,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Filtterpage()));
                      },
                        child: Icon(Icons.menu_open_outlined)),
                  ],
                ),

                
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    shrinkWrap: true,
                    primary: false,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 248,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemBuilder: (context,index){
                      return ContainerResuable();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
