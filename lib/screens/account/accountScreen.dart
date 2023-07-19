import 'package:ecommerce_project/commonWidgets/commonTextFormField.dart';
import 'package:ecommerce_project/commonWidgets/customButton.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/address/widgets/headindAddress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            HeadindAddress(
              title: "Profile",
              size: 280,
            ),
            SizedBox(
              height: 250.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: SizedBox(
                      height: 500.h,
                      child: Image.asset("asset/dashBoard/dp.jpg")),
                ),
              ],
            ),
            CommonTextField(title: "Name", wlength: 0),
            kHeight50,
            CommonTextField(title: "Email", wlength: 0),
            SizedBox(height: 300.h,),
            ElevatedButtonCustomByMe(title: "Update")
          ],
        ),
      ),
    );
  }
}
