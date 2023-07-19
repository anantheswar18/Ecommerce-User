import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/const.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.title,
    required this.wlength,
  });
  final String title;
  final double wlength;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Text(
          title,
          style: GoogleFonts.sora(
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 150.h,
          width: MediaQuery.of(context).size.width/wlength,
          decoration: BoxDecoration(
              color: whiteShade,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: greyShade)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              cursorColor: Colors.black,
              minLines: 1,
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Tap to add',
                hintStyle: GoogleFonts.ubuntu(
                  height: 1.3,
                  textStyle: TextStyle(color: Colors.grey, fontSize: 50.sp),
                ),
                filled: true,
                fillColor: Colors.transparent,
                border: InputBorder.none,
              ),
              style: GoogleFonts.ubuntu(
                height: 1.3,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
