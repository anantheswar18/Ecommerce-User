import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const.dart';

class ItemCardBadminton extends StatefulWidget {
  const ItemCardBadminton({
    super.key,
  });

  @override
  State<ItemCardBadminton> createState() => _ItemCardBadmintonState();
}

class _ItemCardBadmintonState extends State<ItemCardBadminton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 30.w, left: 30.w),
          child: Container(
            height: 600.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: const Color(0xFF0D9D9D9),
                borderRadius: BorderRadius.circular(22.r),
                border: Border.all(
                    color: isFavorite ? Colors.red.shade100 : Colors.grey)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 205.h,
                  child: ClipRRect(
                    child: Image.asset(
                      "asset/homeRound/Badminton-removebg-preview.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                kItemCard40,
                Container(
                  height: 130.h,
                  width: 450.w,
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Yonex",
                        style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "1299",
                        style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
