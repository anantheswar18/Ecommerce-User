import 'dart:developer';

import 'package:ecommerce_project/authentication/auth.dart';
import 'package:ecommerce_project/authentication/widget_Tree.dart';
import 'package:ecommerce_project/commonWidgets/loginTextFiedTwo.dart';
import 'package:ecommerce_project/commonWidgets/loginTextField.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/forget_password/forget_password_screen.dart';
import 'package:ecommerce_project/screens/signup/signupScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../authentication/validation.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? errorMessage = '';

  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth()
          .signInWithEmailAndPassword(
              email: _controllerEmail.text, password: _controllerPassword.text)
          .then((value) => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const WidgetTree(),
              )));
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    print(userCredential.user?.displayName);
  }

  Future<void> signInWithGoogleNav(context) async {
    try {
      await Auth().signInWithGoogle().then(
            (value) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const WidgetTree(),
              ),
            ),
          );
    } catch (e) {
      log(e.toString());
    }
  }

  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : '$errorMessage',
      style: const TextStyle(color: Colors.red),
    );
  }

  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formGlobalKey,
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 500.h),
                  Text(
                    "Sign In",
                    style: GoogleFonts.raleway(
                        fontSize: 40, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Image.asset(
                'asset/loginimages/Login_Image-removebg-preview.png',
                // width: 800.w,
                // height: 600.h,
                scale: 2.5,
              ),
              kFormField100,
              LoginTextFormTwo(
                validation: emailValidation,
                prefixIcon: Icons.email,
                hintText: "Email or Phone",
                controller: _controllerEmail,
              ),
              kFormField30,
              LoginTextForm(
                validation: passwordValidation,
                prefixIcon: Icons.lock,
                hintText: "Password",
                passwordVisiblity: true,
                controller: _controllerPassword,
                suf: Icons.visibility,
                sufV: Icons.visibility_off,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 85.h,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Center(child: _errorMessage()),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (formGlobalKey.currentState!.validate()) {
                    formGlobalKey.currentState?.save();
                  }
                  signInWithEmailAndPassword();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(900.w, 130.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              kFormField50,
              InkWell(
                onTap: () {
                  signInWithGoogleNav(context);
                },
                child: Container(
                  height: 130.h,
                  width: 850.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 1.0,
                        // offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 130.w,
                      ),
                      ClipOval(
                          child: Image.asset(
                        "asset/loginimages/google icon.png",
                        width: 122.w,
                      )),
                      SizedBox(
                        width: 29.w,
                      ),
                      const Text(
                        "Sign In With Google",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                        ));
                      },
                      child: Text("Forget Password..?")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("New user?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: const Text("Sign Up"))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
