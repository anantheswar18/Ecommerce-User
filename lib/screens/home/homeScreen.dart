import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_project/screens/home/functions/whatsapp.dart';

import 'package:ecommerce_project/screens/home/widgets/category_item_card.dart';
import 'package:ecommerce_project/screens/home/widgets/outfitsOrderList.dart';
import 'package:ecommerce_project/screens/search/widgets/searchBar.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/cart/cartScreen.dart';
import 'package:ecommerce_project/screens/home/widgets/headingOfList.dart';
import 'package:ecommerce_project/screens/home/widgets/imageSlider.dart';
import 'package:ecommerce_project/screens/home/widgets/orderViewCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CollectionReference equipment =
      FirebaseFirestore.instance.collection('Equipment Adding');

  final CollectionReference outfits =
      FirebaseFirestore.instance.collection('Outfits');

  List<String> imageList = [
    "asset/homeRound/football-removebg-preview.png",
    "asset/homeRound/cricket-removebg-preview.png",
    "asset/homeRound/Badminton-removebg-preview.png",
    "asset/homeRound/hockey-removebg-preview.png",
    "asset/homeRound/football-removebg-preview.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.more),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150.h),
          child: Padding(
            padding:
                EdgeInsets.only(right: 8.w, left: 8.w, bottom: 10.h, top: 10.h),
            child: const SearchBarTextForm(),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CartScreenWidget(),
                ));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explore Your Sports",
                style: GoogleFonts.oswald(
                    fontSize: 50.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          CategoryItemCard(),
          kFormField100,
          const ImageSlider(),
          kFormField30,
          const HeadingOfList(heading: "Outfits"),
          kHeadingSpace30,
          StreamBuilder(
            stream: outfits.snapshots(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return OutfitsOrderViewList(
                  snapshot: snapshot,
                );
              }
              return Container();
            },
          ),
          // SizedBox(height: 100,),
          const HeadingOfList(heading: "Equipment"),
          kHeadingSpace30,
          StreamBuilder(
            stream: equipment.snapshots(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return OrderViewList(
                  snapshot: snapshot,
                );
              }
              return Container();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: darkShade,
          onPressed: () => openWhatsApp(),
          child: const Icon(Icons.message)),
    );
  }
}
