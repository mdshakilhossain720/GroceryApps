import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final int _counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 371,
                decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back_ios)),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(ImagePath.logout))
                        ],
                      ),
                    ),
                    Center(
                        child: Image.asset(
                      ImagePath.bigApply,
                      height: 199,
                      width: 329,
                      fit: BoxFit.cover,
                    ))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Naturel Red Apple",
                          style: TTextStyle. productDetaiHead,
                        ),
                        Image.asset("assets/logo/love.png"),
                      ],
                    ),
                    Text(
                      "1kg, Price",
                      style:TTextStyle.productDetaiPrices,
                    ),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        Spacer(),
                        Text(
                          "\$4.99",
                          style: TTextStyle.Prices,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(),
                    SizedBox(
                      height: 18,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product Detail",
                              style: TTextStyle.prouctText,
                            ),
                            Image.asset(ImagePath.arrow),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          """Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.""",
                          style: TTextStyle.prouctTextDetailsText,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nutritions",
                          style:TTextStyle.prouctText,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,

                          children: [
                            Container(
                              height: 18,
                              width: 33,
                              decoration: BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "100gr",
                                style:TTextStyle.nuturatuiGr,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 14,
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 9,),
                    Divider(),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Review",
                          style:TTextStyle.prouctText
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,

                          children: [
                            Icon(Icons.star,color: Color(0xffF3603F),size: 14,),
                            Icon(Icons.star,color: Color(0xffF3603F),size: 14,),
                            Icon(Icons.star,color: Color(0xffF3603F),size: 14,),
                            Icon(Icons.star,color: Color(0xffF3603F),size: 14,),
                           Icon(Icons.star,color: Color(0xffF3603F),size: 14,),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 14,
                                )),
                          ],
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 67,
                      width: 364,
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text("Add To Basket",style:TTextStyle.basket),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
