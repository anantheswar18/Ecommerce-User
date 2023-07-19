import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../commonWidgets/appBarWidget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context, "Favorites"),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            child: ClipRRect(
              child: Image.asset(
                "asset/favoritesImages/bubble-gum-woman-shoots-an-arrow-with-a-heart-from-a-bow.gif",
                scale: 3,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Your Wishlist will live here ",
                style:
                    GoogleFonts.merriweatherSans(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                children: [
                  Text(
                    "Explore variety of products and add your favorite products",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                'to Wishlist',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              SizedBox(
                height: 50.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Start shopping ,now!",
                  style: GoogleFonts.merriweatherSans(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
