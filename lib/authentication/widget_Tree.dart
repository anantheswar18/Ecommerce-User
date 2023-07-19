import 'package:ecommerce_project/authentication/auth.dart';
import 'package:ecommerce_project/screens/loginScreen/loginScreen.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar/bottomNavBarScreen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const BottomNavBarScreen();
        }
        return LoginScreen();
      },
    );
  }
}
