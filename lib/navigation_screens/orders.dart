import 'package:flexxited_ana_orders/orders_components/orders_bottom_part.dart';
import 'package:flexxited_ana_orders/orders_components/orders_middle_part.dart';
import 'package:flexxited_ana_orders/Widgets/nav_bar.dart';
import 'package:flexxited_ana_orders/orders_components/orders_top_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.w, top: 42.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopBar(),
          MiddlePart(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BottomPart(),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  height: 65.w,
                  width: 65.w,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Theme.of(context).accentColor,
                      size: 26.sp,
                    ),
                    onPressed: () {},
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
