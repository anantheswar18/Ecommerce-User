import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 300.h,
       decoration: BoxDecoration(
           color: darkShade,
           borderRadius: BorderRadius.only(
               topLeft: Radius.circular(50.r),
               topRight: Radius.circular(50.r))),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           
            Text(
               "Total : ₹ 119,990",
               style: GoogleFonts.roboto(
                 textStyle: TextStyle(fontSize: 18, color: Colors.white),
               ),
             ),
       
           SizedBox(
             width: 450.w,
             height: 150.h,
             child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: whiteShade,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(33.r),
                   ),
                 ),
                 onPressed: () {},
                 child: const Text(
                   "Buy Now",
                   style:  TextStyle(
                       fontSize: 22,
                       color: Colors.black,
                     ),
                 )),
           )
         ],
       ),
     );
  }
}