import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Off-white background color
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              // Removed the borderRadius property to make it straight-edged
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ONLINE SOFT SELL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Hello, Admin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 16), // Adjusted padding to make it fully visible
              child: Icon(Icons.translate, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            DashboardTile(
              imagePath: 'assets/customers.png', // Replace with your image paths
              label: 'CUSTOMERS',
            ),
            DashboardTile(
              imagePath: 'assets/suppliers.png',
              label: 'SUPPLIERS',
            ),
            DashboardTile(
              imagePath: 'assets/products.png',
              label: 'PRODUCTS',
            ),
            DashboardTile(
              imagePath: 'assets/pos.png',
              label: 'POS',
            ),
            DashboardTile(
              imagePath: 'assets/expenses.png',
              label: 'EXPENSE',
            ),
            DashboardTile(
              imagePath: 'assets/orders.png',
              label: 'ORDERS',
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final String imagePath;
  final String label;

  const DashboardTile({
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // Set card background color to white
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 80), // Adjust the size according to your image
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green, // Set text color to green
            ),
          ),
        ],
      ),
    );
  }
}
