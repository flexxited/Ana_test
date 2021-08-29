import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flexxited_ana_orders/controllers/nav_controller.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 202.w,
      height: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: 35.h),
          child: Image.asset(
            "assets/images/ana_logo_2x.png",
            width: 95.w,
            height: 35.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: MenuItems(),
          ),
        )
      ]),
    );
  }
}

List<Widget> MenuItems() {
  List<String> items = [
    "Dashboard",
    "Orders",
    "Inventory",
    "Collections",
    "Reviews",
    "Enquiries",
    "Collabs",
    "Offers & Notices",
    "Blogs",
    "Customers",
    "Careers",
    "Settings"
  ];
  List<Widget> itemWidgets = [];
  for (int count = 0; count < items.length; count++) {
    itemWidgets.add(ReusableNavContainer(
      text: items[count],
      index: count,
    ));
  }
  return itemWidgets;
}

class ReusableNavContainer extends StatelessWidget {
  String text;
  int index;
  ReusableNavContainer({required this.text, required this.index});
  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavController());

    return Obx(
      () => GestureDetector(
        onTap: () => navController.changeIndex(index),
        child: Container(
          height: 45.h,
          color: navController.activeIndex.toInt() == index
              ? Theme.of(context).accentColor
              : Theme.of(context).primaryColor,
          padding: EdgeInsets.only(top: 13.h, left: 18.w, bottom: 12.h),
          child: Text(
            text,
            style: TextStyle(
              color: navController.activeIndex.toInt() == index
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
              fontFamily: "PoppinsReg",
              //fontWeight: FontWeight.w100,
              fontSize: 14.sp,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
