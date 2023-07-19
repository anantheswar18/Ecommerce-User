import 'package:ecommerce_project/commonWidgets/manualAppBar.dart';
import 'package:ecommerce_project/screens/account/accountScreen.dart';
import 'package:ecommerce_project/screens/address/addressScreen.dart';
import 'package:ecommerce_project/screens/profile/widgets/imageDp.dart';
import 'package:ecommerce_project/commonWidgets/customButton.dart';
import 'package:ecommerce_project/screens/profile/widgets/optionBlock.dart';
import 'package:ecommerce_project/screens/yourOrder/yourOrderScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/const.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ManualAppBArScreen(),
          kBLockHight100,
          const ImageDpProfile(),
          kBLockHight100,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const YourOrderScreen(),
                      ),
                    );
                  },
                  child: DashBoardBlocks(title: "Your Orders")),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddressScreen(),
                      ),
                    );
                  },
                  child: DashBoardBlocks(title: "Your Address")),
            ],
          ),
          kBLockHight100,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AccountScreen(),
                      )),
                  child: DashBoardBlocks(title: "Your Account")),
              DashBoardBlocks(title: "Your WishList"),
            ],
          ),
          SizedBox(
            height: 250.h,
          ),
          ElevatedButtonCustomByMe(
            title: "LogOut",
          ),
        ],
      ),
    );
  }
}
