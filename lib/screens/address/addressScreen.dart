import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/address/widgets/addRow.dart';
import 'package:ecommerce_project/screens/address/widgets/addressBox.dart';
import 'package:ecommerce_project/screens/address/widgets/headindAddress.dart';
import 'package:flutter/material.dart';


class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeadindAddress(title: "Address",size: 250),
          const AddRow(),
          kFormField50,
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => const AddressBox(),
            ),
          )
        ],
      ),
    );
  }
}
