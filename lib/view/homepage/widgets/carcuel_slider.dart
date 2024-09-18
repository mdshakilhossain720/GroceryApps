import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/color.dart';



class CaruelSlider extends StatefulWidget {
  const CaruelSlider({
    super.key,
  });

  @override
  State<CaruelSlider> createState() => _CaruelSliderState();
}

class _CaruelSliderState extends State<CaruelSlider> {
  final ValueNotifier<int> selectindex=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 114.0,viewportFraction: 1,onPageChanged: (index,_){
            selectindex.value=index;

          }),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),

                    decoration: BoxDecoration(

                      color:TColor.greyColor,
                    ),

                    child:Image.asset("assets/image/banner.png")
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 4,),
        Positioned(
          bottom: 10,
            left: 110,
            child:ValueListenableBuilder(
          valueListenable: selectindex,
          builder: (context,currentPage,_){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(var i=0; i<5;i++)
                  Container(
                    height:10,
                    width:10,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: i == currentPage ? TColor.splashColor :null,
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(50),

                    ),
                  )
              ],
            );
          },

        ))

      ],
    );
  }
}