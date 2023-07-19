import 'package:ecommerce_project/screens/category/categoryScreen.dart';
import 'package:ecommerce_project/screens/favorites/fav.dart';
import 'package:ecommerce_project/screens/home/homeScreen.dart';
// import 'package:ecommerce_project/screens/loginScreen/loginScreen.dart'
import 'package:ecommerce_project/screens/notifications/notificatios.dart';
import 'package:ecommerce_project/screens/profile/myProfile.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> pages = [
     HomeScreen(),
     CategoryScreen(),
    const FavoriteScreen(),
    const NotificationScreen(),
    const MyProfile(),

  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        fixedColor: const Color(0xFF00B212D),
        currentIndex: current,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              activeIcon: Icon(Icons.home, size: 30),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined, color: Colors.grey),
              label: "Category",
              activeIcon: Icon(
                Icons.category_outlined,
                size: 30,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined, color: Colors.grey),
              label: 'Favorites',
              activeIcon: Icon(Icons.favorite_outlined, size: 30)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.grey),
              label: "Notification",
              activeIcon: Icon(Icons.notifications, size: 30)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.grey),
              label: 'Profile',
              activeIcon: Icon(Icons.account_circle, size: 30)),
        ],
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
      ),
      body: pages.elementAt(current),
    );
  }
}
