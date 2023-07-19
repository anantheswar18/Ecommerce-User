// import 'package:ecommerce_project/screens/category/widgets/categoryTabBar.dart';
import 'package:ecommerce_project/screens/category/widgets/itemCardBadminton.dart';
import 'package:ecommerce_project/screens/category/widgets/itemCardCricket.dart';
import 'package:ecommerce_project/screens/category/widgets/itemCardFootball.dart';
import 'package:ecommerce_project/screens/category/widgets/itemCardHockey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatefulWidget {
  CategoryScreen({
    Key? key,
    this.pageIndex = 0,
    this.isFromHome = false,
  }) : super(key: key);
  int pageIndex;
  bool isFromHome;
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  /// List of Tab Bar Item
  List<String> items = [
    "Footbal",
    "Cricket",
    "Badminton",
    "Hockey",
  ];
  // / List of body icon
  // List<IconData> icons = [
  //   Icons.home,
  //   Icons.explore,
  //   Icons.search,
  //   Icons.feed,
  // ];
  late int current = widget.pageIndex;
  List<Widget> pages = [
    const ItemCardFootball(),
    const ItemCardCricket(),
    const ItemCardBadminton(),
    const ItemCardHockey(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    iconSize: 26,
                    onPressed: () {
                      widget.isFromHome ? Navigator.of(context).pop() : null;
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: widget.isFromHome ? Colors.black : Colors.white,
                    )),
                SizedBox(
                  width: 230.w,
                ),
                Text(
                  "Category",
                  style: GoogleFonts.laila(
                      fontWeight: FontWeight.w500, fontSize: 80.sp),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 200.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        SizedBox(
                          width: 270.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 80,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white70
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(
                                      color: const Color(0xFF00B212D), width: 2)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF00B212D),
                                  shape: BoxShape.circle),
                            ))
                      ],
                    );
                  }),
            ),
            pages[current]
          ],
        ),
      ),
    );
  }
}
