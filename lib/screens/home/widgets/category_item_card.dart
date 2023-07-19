import 'package:ecommerce_project/screens/category/categoryScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


// ignore: must_be_immutable
class CategoryItemCard extends StatelessWidget {
  CategoryItemCard({super.key});
  List<String> imageList = [
    "asset/homeRound/football-removebg-preview.png",
    "asset/homeRound/cricket-removebg-preview.png",
    "asset/homeRound/Badminton-removebg-preview.png",
    "asset/homeRound/hockey-removebg-preview.png",
    
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CategoryScreen(pageIndex: index,isFromHome: true),
              ));
            },
            child: Container(
              margin: EdgeInsets.all(10.w),
              padding: EdgeInsets.all(40.w),
              height: 250.h,
              width: 250.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 12, 16, 29),
                    Color.fromARGB(255, 231, 228, 228)
                  ],
                ),
              ),
              child: Image.asset(
                imageList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
