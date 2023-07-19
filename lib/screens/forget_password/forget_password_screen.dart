import 'dart:developer';

import 'package:ecommerce_project/authentication/validation.dart';
import 'package:ecommerce_project/commonWidgets/loginTextField.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController forgetPassword = TextEditingController();
  @override
  void dispose() {
    forgetPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(239, 47, 119, 158),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 123.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  width: 140.w,
                ),
                Text("Forget Password",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(
              height: 150.h,
            ),
            Image.asset(
              "asset/loginimages/bubble-gum-otp-verification.gif",
              scale: 1.7,
            ),
            SizedBox(
              height: 122.h,
            ),
            LoginTextForm(
                prefixIcon: Icons.abc,
                hintText: 'Enter the mail id',
                controller: forgetPassword,
                validation: emailValidation),
            kBLockHight100,
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 123.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  )),
                  onPressed: () {
                    resetPassword();
                  },
                  child: Text("Reset Password")),
            )
          ],
        ),
      ),
    );
  }

  Future resetPassword() async {
    // showDialog( 
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) => CircularProgressIndicator(),
    // );

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: forgetPassword.text.trim());
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  }
}
