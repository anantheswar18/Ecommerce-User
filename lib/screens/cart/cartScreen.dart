import 'package:ecommerce_project/screens/cart/widget/cartBottomSheet.dart';
import 'package:ecommerce_project/screens/cart/widget/cartElement.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreenWidget extends StatelessWidget {
  const CartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.laila(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => const CartElementWidget(),
              itemCount: 10,
            ),
          )
        ],
      ),
      bottomSheet: CartBottomSheet(),
    );
  }
}
