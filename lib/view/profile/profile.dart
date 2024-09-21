import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            // Profile header section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,

                    backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Afsar Hossen',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'lmshuvo97@gmail.com',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),
        
            // Options list
            Expanded(
              child: ListView(
                children: [
                  buildMenuItem(Icons.shopping_bag_outlined, 'Orders', () {}),
                  Divider(),
                  buildMenuItem(Icons.person_outline, 'My Details', () {}),
                  Divider(),
                  buildMenuItem(Icons.location_on_outlined, 'Delivery Address', () {}),
                  Divider(),
                  buildMenuItem(Icons.payment_outlined, 'Payment Methods', () {}),
                  Divider(),
                  buildMenuItem(Icons.local_offer_outlined, 'Promo Code', () {}),
                  Divider(),
                  buildMenuItem(Icons.notifications_outlined, 'Notifications', () {}),
                  Divider(),
                  buildMenuItem(Icons.help_outline, 'Help', () {}),
                  Divider(),
                  buildMenuItem(Icons.info_outline, 'About', () {}),
                  Divider(),
                ],
              ),
            ),
        
            // Log out button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF2F3F2),
                  foregroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle logout action
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.logout),
                    SizedBox(width: 90),
                    Text('Log Out'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Build individual menu item
  Widget buildMenuItem(IconData icon, String text, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}
