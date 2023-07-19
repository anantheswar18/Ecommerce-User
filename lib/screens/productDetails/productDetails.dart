import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/productDetails/widgets/bottomCard.dart';
import 'package:ecommerce_project/screens/productDetails/widgets/productImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.Snap});

  DocumentSnapshot Snap;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          kHeight50,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 11.w),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black26),
                    boxShadow: [
                      BoxShadow(
                        color: isFav ? Colors.black : Colors.redAccent,
                        blurRadius: 10.0, // Soften the shaodw
                        // spreadRadius: 21.0,
                        offset: const Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          isFav = !isFav;
                        });
                      },
                      icon: Icon(
                        isFav ? Icons.favorite_border : Icons.favorite,
                        color: Colors.redAccent,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 900.h,
            child: const ImageProductSlider(),
          ),
        ],
      ),
      bottomSheet: ProductDetailsBottomSheet(Snap:widget.Snap),
    );
  }
}
