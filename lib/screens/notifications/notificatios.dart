import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../commonWidgets/appBarWidget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(context, "Notifications"),
      body: Column(
        children: [
          SizedBox(height: 300.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset(
                  "asset/notificationImage/dazzle-calendar-and-alarm-for-time-management.gif",
                  scale: 3,
                ),
              ),
            ],
          ),
          Text(
            "You’ve not received any notification yet",
            style: GoogleFonts.merriweatherSans(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 50.h,),
          Text("You‘ll find all notifications from our store regarding latest ",),
          
          Center(child: Text("offers and other updates in here."))
        ],
      ),
    );
  }
}
