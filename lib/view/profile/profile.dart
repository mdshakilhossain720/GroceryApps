import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.green),
            onPressed: () {
              // Action for editing profile
            },
          )
        ],
      ),
      body: Column(
        children: [
          // Profile header section
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                buildMenuItem(Icons.person_outline, 'My Details', () {}),
                buildMenuItem(Icons.location_on_outlined, 'Delivery Address', () {}),
                buildMenuItem(Icons.payment_outlined, 'Payment Methods', () {}),
                buildMenuItem(Icons.local_offer_outlined, 'Promo Code', () {}),
                buildMenuItem(Icons.notifications_outlined, 'Notifications', () {}),
                buildMenuItem(Icons.help_outline, 'Help', () {}),
                buildMenuItem(Icons.info_outline, 'About', () {}),
              ],
            ),
          ),

          // Log out button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade50,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.logout),
                  SizedBox(width: 10),
                  Text('Log Out'),
                ],
              ),
            ),
          ),
        ],
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
