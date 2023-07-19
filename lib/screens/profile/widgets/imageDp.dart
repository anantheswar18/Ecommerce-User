import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageDpProfile extends StatelessWidget {
  const ImageDpProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: SizedBox(
            height: 700.h,
            child: Image.asset("asset/dashBoard/dp.jpg")),
        )
      ],
    );
  }
}