import 'package:ecommerce_project/screens/addressAddingScreen/addressAddingWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/const.dart';

class AddRow extends StatelessWidget {
  const AddRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Select an address :",
            style: TextStyle(fontSize: 60.sp, fontWeight: FontWeight.w600)),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddressAddingScreeen(),
              ),
            );
          },
          child: Container(
            height: 122.h,
            width: 200.w,
            decoration: BoxDecoration(
                color: greyShade, borderRadius: BorderRadius.circular(50.r)),
            child: Center(
                child: Text(
              "Add",
              style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
            )),
          ),
        )
      ],
    );
  }
}
