

import 'package:flutter/material.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import 'widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Dummy data for cart items
  List<CartItem> cartItems = [
    CartItem(name: 'Bell Pepper Red', quantity: 1, price: 4.99, imagePath: 'assets/image/apple.png'),
    CartItem(name: 'Egg Chicken Red', quantity: 1, price: 1.99, imagePath: 'assets/image/apple.png'),
    CartItem(name: 'Organic Bananas', quantity: 1, price: 3.00, imagePath: 'assets/image/apple.png'),
    CartItem(name: 'Ginger', quantity: 1, price: 2.99, imagePath: 'assets/image/apple.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
          automaticallyImplyLeading: false,

        title: Text('My Cart',style:TTextStyle.cartApp),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Divider(),
            SizedBox(height: 16,),
            Expanded(
              child: ListView.separated(
                itemCount:5,
                itemBuilder: (context, index) {
                  return CartItems();

                }, separatorBuilder: (BuildContext context, int index) {
                  return Divider();
              },
              ),
            ),
            //CheckoutSection(total: calculateTotal()),
          ],
        ),
      ),
    );
  }

  Padding BottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 67,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Color(0xff53B175),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Go to Checkout",style: TTextStyle.cheek),
            SizedBox(width: 40,),
            Container(
              alignment: Alignment.center,
              height: 22,
              width: 43,
              decoration: BoxDecoration(
                color: Color(0xff489E67),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text("\$12.96",style:TTextStyle.che),
            )
          ],
        ),
      ),
    );
  }


}



class CartItem {
  String name;
  int quantity;
  double price;
  String imagePath;

  CartItem({
    required this.name,
    required this.quantity,
    required this.price,
    required this.imagePath,
  });
}



