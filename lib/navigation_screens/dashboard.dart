import 'package:flexxited_ana_orders/dashboard_components/dashboard_middle_part.dart';
import 'package:flexxited_ana_orders/dashboard_components/dashboard_top_bar.dart';
import 'package:flexxited_ana_orders/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.w, top: 42.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [DashboardTopBar(), DashboardMiddlePart()],
      ),
    );
  }
}
