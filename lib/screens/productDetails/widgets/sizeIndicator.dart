import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundSizeIndicator extends StatelessWidget {
  const RoundSizeIndicator({
    super.key,
    required this.uKSize
  });

  final String uKSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 200.w,
      padding: const EdgeInsets.only(top: 18,left:20),
      decoration:const BoxDecoration(
        color: Color(0xFF02B2A2A),
        shape: BoxShape.circle
      ),
      child: Text(uKSize,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40.sp),),
    );
  }
}