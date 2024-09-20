

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Dummy data for cart items
  List<CartItem> cartItems = [
    CartItem(name: 'Bell Pepper Red', quantity: 1, price: 4.99, imagePath: 'assets/images/bell_pepper.png'),
    CartItem(name: 'Egg Chicken Red', quantity: 1, price: 1.99, imagePath: 'assets/images/eggs.png'),
    CartItem(name: 'Organic Bananas', quantity: 1, price: 3.00, imagePath: 'assets/images/bananas.png'),
    CartItem(name: 'Ginger', quantity: 1, price: 2.99, imagePath: 'assets/images/ginger.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(
                  item: cartItems[index],
                  onQuantityChanged: (newQuantity) {
                    setState(() {
                      cartItems[index].quantity = newQuantity;
                    });
                  },
                  onRemove: () {
                    setState(() {
                      cartItems.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
          CheckoutSection(total: calculateTotal()),
        ],
      ),
    );
  }

  double calculateTotal() {
    return cartItems.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
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

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onRemove;

  const CartItemWidget({
    Key? key,
    required this.item,
    required this.onQuantityChanged,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          // Item image
          Image.asset(
            item.imagePath,
            width: 60,
            height: 60,
          ),
          SizedBox(width: 16),
          // Item details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text('1kg, Price'), // You can customize this based on the product
              ],
            ),
          ),
          // Quantity selector
          Row(
            children: [
              IconButton(
                onPressed: () {
                  if (item.quantity > 1) {
                    onQuantityChanged(item.quantity - 1);
                  }
                },
                icon: Icon(Icons.remove_circle_outline),
              ),
              Text('${item.quantity}', style: TextStyle(fontSize: 18)),
              IconButton(
                onPressed: () {
                  onQuantityChanged(item.quantity + 1);
                },
                icon: Icon(Icons.add_circle_outline),
              ),
            ],
          ),
          // Item price
          Text('\$${(item.price * item.quantity).toStringAsFixed(2)}'),
          IconButton(
            onPressed: onRemove,
            icon: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class CheckoutSection extends StatelessWidget {
  final double total;

  const CheckoutSection({
    Key? key,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$${total.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle checkout action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Background color
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Go to Checkout',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
