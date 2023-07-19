import 'package:ecommerce_project/commonWidgets/customButton.dart';
import 'package:ecommerce_project/constants/const.dart';
import 'package:ecommerce_project/screens/address/widgets/headindAddress.dart';
import 'package:ecommerce_project/commonWidgets/commonTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressAddingScreeen extends StatelessWidget {
  const AddressAddingScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeadindAddress(
              title: "Add Address",
              size: 180,
            ),
            kBLockHight100,
            const CommonTextField(title: "Name", wlength: 0),
            kHeight50,
            const CommonTextField(title: "Phone Number", wlength: 0),
            kHeight50,
            const Row(
              children: [
                CommonTextField(title: "Pincode", wlength: 2.5),
                CommonTextField(title: "City", wlength: 2.5),
              ],
            ),
            kHeight50,
            const CommonTextField(title: "State", wlength: 0),
            kHeight50,
            const CommonTextField(title: "House no:/Building no:", wlength: 0),
            kHeight50,
            const CommonTextField(title: "Area / Street", wlength: 0),
            kBLockHight100,
            const ElevatedButtonCustomByMe(title: "Save"),
          ],
        ),
      ),
    );
  }
}
