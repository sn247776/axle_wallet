import 'dart:async';
import 'dart:developer';

import 'package:axle_wallet/providers/user_provider.dart';
import 'package:axle_wallet/router.dart';
import 'package:axle_wallet/wallet_home.dart';
import 'package:axle_wallet/features/auth/screens/wallet_login.dart';
import 'package:axle_wallet/wallet_profile.dart';
import 'package:axle_wallet/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/auth_service.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

Future<String?> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('x-auth-token');
  return token;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  var logger = Logger();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context: context);
  }

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
        onGenerateRoute: (settings) => generateRoute(settings),
        home: FutureBuilder(
          future: getToken(),
          builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
            // log(snapshot.data);
            if( snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if( snapshot.hasError) {
                return Text('Error : ${snapshot.error}');
              }
              else {
                if( snapshot.data != null){
                  return snapshot.data!.isNotEmpty ? const HomeScreen() : const LoginScreen();
                }
                return const LoginScreen();
              }
            }
          },
        )
    );
  }
}
