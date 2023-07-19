import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:text_scroll/text_scroll.dart';

class YourOrderList extends StatelessWidget {
  const YourOrderList({
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
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 30.w,
          ),
          ClipRRect(
            child: Image.asset(
              "asset/imageInCard/Boots-removebg-preview.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 45.w,
          ),
          SizedBox(
            height: double.maxFinite,
            width: 600.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90.w, right: 50.w),
                  child: TextScroll(
                    "Addidas Messi Edition ",
                    style: TextStyle(fontSize: 50.sp),
                    velocity:
                        const Velocity(pixelsPerSecond: Offset(50, 0)),
                    pauseBetween: const Duration(milliseconds: 1000),
                    mode: TextScrollMode.bouncing,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 90.w, right: 50.w),
                  child: const TextScroll(
                    "Delivered on Jan 12 2023 ",
                    style: TextStyle(),
                    velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                    pauseBetween: Duration(milliseconds: 1000),
                    mode: TextScrollMode.bouncing,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}