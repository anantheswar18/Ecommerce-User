import 'package:ecommerce_project/constants/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

bool isFavorite = false;

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 180.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150.h,
              child: CupertinoSearchTextField(
                backgroundColor: greyShade,
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 30.w,left: 30.w),
                child: Container(
                  height: 600.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF0D9D9D9),
                      borderRadius: BorderRadius.circular(22.r),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200.h,
                        child: ClipRRect(
                          child: Image.asset(
                            "asset/imageInCard/Boots-removebg-preview.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 130.h,
                        width: 450.w,
                        padding: EdgeInsets.all(20.w),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22.r)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Adidas Messi Edition',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '1299',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
