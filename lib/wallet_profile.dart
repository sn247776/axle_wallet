import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Center(
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/sagar.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  "John Doe",
                  style: TextStyle(fontSize: 18),
                ),
                const Text(
                  "Level-01",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const Text(
            "Full Name",
            style: TextStyle(fontSize: 14, color: Colors.white38),
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              Icon(Icons.account_circle_outlined),
              SizedBox(width: 15),
              Text(
                "John Doe",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Email Address",
            style: TextStyle(fontSize: 14, color: Colors.white38),
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              Icon(Icons.email_outlined),
              SizedBox(width: 15),
              Text(
                "johndoe23@gmail.com",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Phone Number",
            style: TextStyle(fontSize: 14, color: Colors.white38),
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              Icon(Icons.local_phone_outlined),
              SizedBox(width: 15),
              Text(
                "+919837487932",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 50),
          const Center(
            child: Text(
              "Joined 04 March 2023",
              style: TextStyle(fontSize: 14),
            ),
          )
        ]),
      ),
    );
  }
}
