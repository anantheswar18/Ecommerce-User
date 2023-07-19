import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:text_scroll/text_scroll.dart';

class CartElementWidget extends StatelessWidget {
  const CartElementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.w),
      height: 300.h,
      width: 1000.w,
      decoration: BoxDecoration(
          color: const Color(0xFF0D9D9D9),
          borderRadius: BorderRadius.circular(30.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            child: Image.asset(
                "asset/imageInCard/Boots-removebg-preview.png"),
          ),
          SizedBox(
            height: double.maxFinite,
            width: 365.w,
            // color: Colors.amber,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextScroll(
                    "Addidas Messi Edition",
                    velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                    pauseBetween: Duration(milliseconds: 1000),
                    mode: TextScrollMode.bouncing,
                  ),
                ),
                Text("₹ 109,990")
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_forever)),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.only(bottom: 20.w),
                    onPressed: () {},
                    icon: const Icon(Icons.minimize),
                    iconSize: 18,
                  ),
                  const Center(
                    child: Text(
                      "1",
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    iconSize: 18,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}