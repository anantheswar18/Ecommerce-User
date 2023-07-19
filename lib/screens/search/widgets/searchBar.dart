import 'package:ecommerce_project/screens/search/searchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarTextForm extends StatelessWidget {
  const SearchBarTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 3,
        right: 3,
      ),
      child: SizedBox(
        height: 140.h,
        child: TextFormField(
          readOnly: true,
          onTap: () => Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => const SearchScreen(),
              fullscreenDialog: true)),
          // onTapOutside: (event) {
          //   FocusScope.of(context).requestFocus(FocusNode());
          // },
          decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF00B212D),
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xFF00B212D),
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: Color(0xFF00B212D),
            ),
            hintText: "What are you looking ?",
          ),
          // cursorColor: const Color(0xFF00B212D),
          // readOnly: true,
        ),
      ),
    );
  }
}
