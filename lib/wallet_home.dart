import 'dart:developer';

import 'package:axle_wallet/models/user.dart';
import 'package:axle_wallet/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context, listen: true);
    var logger = Logger();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
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
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/sagar.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userProvider.user.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "lv1 Next Level: 110/500.00 (Recharge)",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100, // Adjust the width as per your requirement
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "Today’s Earnings",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '0.56',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100, // Adjust the width as per your requirement
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "Balance",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '0.76',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100, // Adjust the width as per your requirement
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "Frozen Amount",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '452',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// Recharge Balance and Withdraw Now Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      // Add your withdraw logic here
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Recharge Balance',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your submit funds logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Withdraw Now',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /// Term Earnings and Film Investment
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Team Earnings",
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Film Investment",
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ),
            ),

            /// Icons
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.book),
                        )),
                    const SizedBox(height: 2),
                   const Text("Office Guide", style: TextStyle(
                      fontSize: 10
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.work),
                        )),
                    const SizedBox(height: 2),
                    const Text("Agreement", style: TextStyle(
                        fontSize: 10
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                        )),
                    const SizedBox(height: 2),
                    const Text("Share Code", style: TextStyle(
                        fontSize: 10
                    ),)
                  ],
                )
              ],
            ),

            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.account_balance),
                        )),
                    const SizedBox(height: 2),
                    const Text("Account Record", style: TextStyle(
                        fontSize: 10
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet),
                        )),
                    const SizedBox(height: 2),
                    const Text("E-Wallet", style: TextStyle(
                        fontSize: 10
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.workspace_premium),
                        )),
                    const SizedBox(height: 2),
                    const Text("Membership level", style: TextStyle(
                        fontSize: 10
                    ),)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
