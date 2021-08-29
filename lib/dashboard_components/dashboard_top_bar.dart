import 'package:flexxited_ana_orders/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: Row(
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff000000),
                fontFamily: "PoppinsMed"),
          ),
          SizedBox(
            width: 15.w,
          ),
          Container(
            height: 24.h,
            width: 98.w,
            decoration: BoxDecoration(
              color: Color(0xff000000),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: Text(
                    "Today",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12.sp,
                        fontFamily: "PoppinsReg"),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Color(0xffffffff),
                    size: 20.sp,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 615.w,
          ),
          SearchBar()
        ],
      ),
    );
  }
}
