import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingOfList extends StatelessWidget {
  const HeadingOfList({
    super.key,
    required this.heading
  });


  final String heading;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        Text(
          heading,
          style: GoogleFonts.lora(
              fontSize: 70.sp, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}