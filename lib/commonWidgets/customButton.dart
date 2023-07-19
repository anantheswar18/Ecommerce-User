import 'package:ecommerce_project/authentication/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonCustomByMe extends StatelessWidget {
  const ElevatedButtonCustomByMe({
    super.key,
    required this.title,
  });
  final String title;
  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 900.h,
      height: 150.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.r),
        )),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('LogOut'),
            content: const Text('Are You Sure?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  signOut();
                  Navigator.of(context).pop();
                },
                child: const Text('LogOut'),
              ),
            ],
          ),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 55.sp),
        ),
      ),
    );
  }
}
