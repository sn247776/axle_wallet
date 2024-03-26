import 'package:axle_wallet/features/auth/screens/wallet_login.dart';
import 'package:axle_wallet/wallet_funds.dart';
import 'package:axle_wallet/wallet_home.dart';
import 'package:axle_wallet/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case FundsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const FundsScreen(),
      );
    case BottomNavBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomNavBar(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}