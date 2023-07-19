import 'package:ecommerce_project/screens/cart/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar AppBarWidget(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: GoogleFonts.laila(
        fontWeight: FontWeight.w500,
      ),
    ),
    leading:
        IconButton(onPressed: () {
         
        }, icon: const Icon(Icons.arrow_back_ios)),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CartScreenWidget(),
            ));
          },
          icon: const Icon(Icons.shopping_cart))
    ],
  );
}
