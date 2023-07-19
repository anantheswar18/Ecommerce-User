import 'package:ecommerce_project/authentication/auth.dart';
import 'package:ecommerce_project/authentication/validation.dart';
import 'package:ecommerce_project/authentication/widget_Tree.dart';
import 'package:ecommerce_project/commonWidgets/loginTextFiedTwo.dart';
import 'package:ecommerce_project/commonWidgets/loginTextField.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/loginScreen/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? errorMessage = '';
  bool isLogin = true;
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirmPassword =
      TextEditingController();

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth()
          .createUserWithEmailAndPassword(
              name: _controllerName.text,
              email: _controllerEmail.text,
              password: _controllerPassword.text,
              confirmPassword: _controllerConfirmPassword.text)
          .then((value) => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const WidgetTree(),
              )));
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 800.h),
                  Text(
                    "Sign up",
                    style: GoogleFonts.raleway(
                        fontSize: 40, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              LoginTextFormTwo(
                hintText: "Name",
                validation: emailValidation,
                prefixIcon: Icons.abc,
                controller: _controllerName,
                // passwordVisiblity: false,
              ),
              kFormField30,
              LoginTextFormTwo(
                validation: emailValidation,
                hintText: "Email",
                prefixIcon: Icons.email,
                controller: _controllerEmail,
                // passwordVisiblity: false,
              ),
              kFormField30,
              LoginTextForm(
                validation: passwordValidation,
                hintText: "Password",
                prefixIcon: Icons.password,
                passwordVisiblity: true,
                controller: _controllerPassword,
                suf: Icons.visibility,
                sufV: Icons.visibility_off,
              ),
              kFormField30,
              LoginTextForm(
                validation: passwordValidation,
                hintText: "Confirm Password",
                prefixIcon: Icons.password,
                passwordVisiblity: true,
                controller: _controllerConfirmPassword,
                suf: Icons.visibility,
                sufV: Icons.visibility_off,
              ),
              kFormField50,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 85.h,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Center(child: _errorMessage())),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  createUserWithEmailAndPassword();
                  if (formGlobalKey.currentState!.validate()) {
                    formGlobalKey.currentState?.save();
                  }
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account !"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
