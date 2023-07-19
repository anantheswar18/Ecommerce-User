import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/productDetails/widgets/sizeIndicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'QuantityButton.dart';

class ProductDetailsBottomSheet extends StatelessWidget {
  ProductDetailsBottomSheet({
    super.key,
    required this.Snap,
  });
  DocumentSnapshot Snap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollableSheet(
            minChildSize: 0.50,
            maxChildSize: 1.0,
            // snapAnimationDuration: Duration(microseconds: 20),
            expand: false,
            snap: true,
            builder: (context, scrollController) => ListView(
                  controller: scrollController,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 100.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              Snap['Product Name'],
                              style: GoogleFonts.anton(fontSize: 60.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20.w, height: 60.h),
                            const Text(
                                "Product description any speciality of the product ",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 200.h,
                            ),
                            Text("Size",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 55.sp)),
                          ],
                        ),
                        const Row(
                          children: [
                            RoundSizeIndicator(uKSize: "UK 6"),
                            RoundSizeIndicator(uKSize: "UK 7"),
                            RoundSizeIndicator(uKSize: "UK 8"),
                            RoundSizeIndicator(uKSize: "UK 9"),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 200.h,
                            ),
                            Text("Quantity ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 55.sp)),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 150.h,
                              width: 400.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF0F5F5F5),
                                  borderRadius: BorderRadius.circular(100.r)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const QuantityButton(
                                      icon: Icons.minimize, num: 12),
                                  Text(
                                    "1",
                                    style: TextStyle(fontSize: 50.sp),
                                  ),
                                  const QuantityButton(icon: Icons.add, num: 0),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 210.w,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      fontSize: 70.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '₹${Snap['Price']}',
                                  style: TextStyle(
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 200.h,
                            ),
                            Text("About this Product",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 55.sp)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            color: whiteShade,
                            height: 500.h,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              Snap['Description'],
                              style: TextStyle(),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 800.h,
                        // ),
                        // Container(
                        //   height: 300.h,
                        //   decoration: BoxDecoration(
                        //       color: Color(0xFF00B212D),
                        //       borderRadius: BorderRadius.only(
                        //           topLeft: Radius.circular(50.r),
                        //           topRight: Radius.circular(50.r))),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //     children: [
                        //       TextButton(
                        //         onPressed: () {},
                        //         child: Text(
                        //           "Add To Cart",
                        //           style: GoogleFonts.roboto(
                        //             textStyle: TextStyle(
                        //                 fontSize: 22, color: Colors.white),
                        //           ),
                        //         ),
                        //       ),
                        //       ElevatedButton(
                        //         style: ElevatedButton.styleFrom(
                        //           backgroundColor: Colors.white,
                        //           shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(33.r),
                        //           ),
                        //         ),
                        //         onPressed: () {},
                        //         child: Text(
                        //           "Buy Now",
                        //           style: TextStyle(
                        //             fontSize: 22,
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                )),
        Positioned(
          bottom: 0,
          child: Container(
            height: 300.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF00B212D),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add To Cart",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
