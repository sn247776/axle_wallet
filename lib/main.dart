import 'package:axle_wallet/wallet_login.dart';
import 'package:axle_wallet/wallet_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 177, 134, 1),
            primary: const Color.fromRGBO(254, 177, 134, 1),
            brightness: Brightness.dark),
      ),
      home: const ProfileScreen(),
    );
  }
}
