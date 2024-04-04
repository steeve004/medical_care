import 'package:flutter/material.dart';
import 'main.dart'; // Assuming the login screen is in main.dart

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Handle logout here
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to WeCare Clinic',
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0),
              _buildButton(context, Icons.person_add, 'Add Patient', () {
                // Handle "Add Patient" icon tap
              }),
              const SizedBox(height: 20.0),
              _buildButton(context, Icons.view_list, 'View Patient', () {
                // Handle "View Patient" icon tap
              }),
              const SizedBox(height: 20.0),
              _buildButton(context, Icons.add_circle, 'Add Patient Test', () {
                // Handle "Add Patient Test" icon tap
              }),
              const SizedBox(height: 20.0),
              _buildButton(context, Icons.read_more, 'View Patient Test', () {
                // Handle "View Patient Test" icon tap
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
            'assets/back3.png'), // Replace 'assets/logo.png' with your logo image path
      ),
    );
  }

  Widget _buildButton(
      BuildContext context, IconData icon, String label, Function() onTap) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 13, 62, 14),
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
              size: 24.0, color: Colors.white), // Set icon color to white
          const SizedBox(width: 10.0),
          Text(
            label,
            style: const TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
