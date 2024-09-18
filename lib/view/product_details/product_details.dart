import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/image_path.dart';

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
                              icon: Image.asset("assets/logo/logout.png"))
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
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff181725),
                          ),
                        ),
                        Image.asset("assets/logo/love.png"),
                      ],
                    ),
                    Text(
                      "1kg, Price",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CounterButton(
                          loading: false,
                          onChange: (int val) {
                            setState(() {
                              //  _counterValue = val;
                            });
                          },
                          count: _counterValue,
                          countColor: Colors.black,
                          buttonColor: Colors.green,
                          //  border: Border.all(color: Colors.transparent, width: 0),
                          //progressColor: Colors.purpleAccent,
                        ),
                        Text(
                          "\$4.99",
                          style: TextStyle(
                            fontSize: 24,
                            letterSpacing: 0.1,
                            color: Color(0xff181725),
                          ),
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
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725),
                              ),
                            ),
                            Image.asset("assets/logo/arrow.png"),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          """Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.""",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff7C7C7C),
                          ),
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
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff181725)),
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
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xff7C7C7C),
                                ),
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
                          style:
                          TextStyle(fontSize: 18, color: Color(0xff181725)),
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
                      child: Text("Add To Basket",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFF9FF)
                      ),),
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
