import 'package:flexxited_ana_orders/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import 'package:flexxited_ana_orders/widgets/reusable_top_bar_container.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ReusableTopBarcontainer(
            text: "New Orders (132)",
            padding: 21.w,
            fontSize: 14.sp,
            colour: Theme.of(context).primaryColor,
          ),
          ReusableTopBarcontainer(
            padding: 21.w,
            fontSize: 14.sp,
            text: "Under Progress (76)",
          ),
          ReusableTopBarcontainer(
            padding: 21.w,
            fontSize: 14.sp,
            text: "Shipping (60)",
          ),
          ReusableTopBarcontainer(
            padding: 21.w,
            fontSize: 14.sp,
            text: "Completed (220)",
          ),
          ReusableTopBarcontainer(
            padding: 0.w,
            text: "Cancelled (47)",
            isPadding: false,
            fontSize: 14.sp,
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.w),
            child: Icon(
              Icons.arrow_drop_down,
              color: Color(0xff827F7F),
            ),
          ),
          ReusableTopBarcontainer(
            padding: 0.w,
            fontSize: 14.sp,
            text: "Returns (11)",
            isPadding: false,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: SearchBar(),
          )
        ],
      ),
    );
  }
}
