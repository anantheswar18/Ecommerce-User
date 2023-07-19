import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class ManualAppBArScreen extends StatelessWidget {
  const ManualAppBArScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "My DashBoard",
            style:
                GoogleFonts.laila(fontSize: 90.sp, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
