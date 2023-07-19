import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/address/widgets/headindAddress.dart';
import 'package:ecommerce_project/screens/yourOrder/widgets/yourOrderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourOrderScreen extends StatelessWidget {
  const YourOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           HeadindAddress(title: "Your Orders",size: 222),
          kFormField50,
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => const YourOrderList(),
            ),
          )
        ],
      ),
    );
  }
}
