import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardBlocks extends StatelessWidget {
  const DashBoardBlocks({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 400.w,
      decoration: BoxDecoration(
          color: Color(0xFF0D9D9D9), borderRadius: BorderRadius.circular(80.r)),
      child: Center(
          child: Text(
        title,
        style: GoogleFonts.rubik(fontWeight: FontWeight.w500),
      )),
    );
  }
}
