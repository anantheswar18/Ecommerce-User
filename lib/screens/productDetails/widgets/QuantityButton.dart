import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.icon,
    required this.num,
  });
  final IconData icon;
  final double num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122.h,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: IconButton(
        padding: EdgeInsets.only(bottom: num),
        onPressed: () {},
        icon: Center(child: Icon(icon)),
      ),
    );
  }
}
