import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/productDetails/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class OutfitsOrderViewList extends StatelessWidget {
  OutfitsOrderViewList({
    super.key,
    required this.snapshot,
  });
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 50.w, right: 50.w),
        itemCount: snapshot.data.docs.length,
        itemBuilder: (context, index) {
          final DocumentSnapshot outfitSnap = snapshot.data.docs[index];
          return Padding(
            padding: EdgeInsets.all(10.w),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  ProductDetails(Snap: outfitSnap),
                ));
              },
              child: Column(
                children: [
                  Container(
                    height: 500.h,
                    width: 470.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: greyShade),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network(
                        outfitSnap['Image'][0],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    height: 180.h,
                    width: 470.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: greyShade),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 500.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 20.h,
                              ),
                              SizedBox(
                                width: 300.h,
                                child: Text(
                                  outfitSnap['Product Name'],
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_border),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                          width: 500.h,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 22.w,
                              ),
                              Text(
                                '₹${outfitSnap['Price']}',
                                style: GoogleFonts.roboto(
                                    fontSize: 50.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
