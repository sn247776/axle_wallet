import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body:  Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                "General",
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white54, fontSize: 14),
              ),
             const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0), // Add padding here
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white10, // Choose your border color
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0), // Add padding to text
                      child: Text(
                        "My Profile",
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0), // Add padding here
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white10, // Choose your border color
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(bottom: 2.0), // Add padding to text
                      child: Text(
                        "Contact Us",
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0), // Add padding here
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white10, // Choose your border color
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0), // Add padding to text
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
