import 'package:ecommerce_project/constants/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
        SizedBox(
            width: 100.w,
            child: Radio(
              value: "Radio Value",
              groupValue: "Group Value",
              onChanged: (value) {
                
              },
              activeColor: darkShade,
            )),
        Container(
          margin: EdgeInsets.all(20.w),
          padding: EdgeInsets.all(70.w),
          height: 600.h,
          width: 900.w,
          decoration: BoxDecoration(
            color: greyShade,
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  "Shenoy Nivas A N Puram East Gate Alappuzha ",
                  style: GoogleFonts.ubuntu(
                    fontSize: 60.sp,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 108.w,
                    ),
                    height: 100.h,
                    width: 300.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit_outlined),
                          iconSize: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline_outlined),
                            iconSize: 20),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
