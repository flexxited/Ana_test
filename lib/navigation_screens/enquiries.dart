import 'package:flexxited_ana_orders/widgets/reusable_top_bar_container.dart';
import 'package:flexxited_ana_orders/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Enquiries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 42.h, left: 21.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableTopBarcontainer(
                  fontSize: 16.sp,
                  text: "Enquiries (15 new)",
                  padding: 49.w,
                  colour: Theme.of(context).primaryColor,
                ),
                ReusableTopBarcontainer(
                  text: "Hidden",
                  padding: 0.w,
                  fontSize: 16.sp,
                  isPadding: false,
                  colour: Color(0xffCECECE),
                ),
                SizedBox(
                  width: 571.w,
                ),
                SearchBar()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23.h),
            child: Container(
              width: 1148.w,
              height: 616.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD9D9D9), width: 1),
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: table(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<ReusableContainerTable> table() {
  List<ReusableContainerTable> tableContents = [];
  tableContents.add(ReusableContainerTable(
    colour: Color(0xff000000),
    textColour: Color(0xff9E9E9E),
    padding: 0,
    isHide: false,
  ));

  for (int i = 1; i <= 15; i++) {
    if (i == 1) {
      tableContents.add(ReusableContainerTable(padding: 7));
    } else {
      tableContents.add(i % 2 == 0
          ? ReusableContainerTable(colour: Color(0xffF2F2F2))
          : ReusableContainerTable());
    }
  }

  return tableContents;
}

class ReusableContainerTable extends StatelessWidget {
  Color colour;
  double padding;
  Color textColour;
  bool isHide;

  ReusableContainerTable(
      {this.padding = 1,
      this.colour = const Color(0xffFFFFFF),
      this.textColour = const Color(0xff000000),
      this.isHide = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding.h),
      child: Container(
        height: 35.h,
        color: colour,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "NAME",
                style: TextStyle(
                    color: textColour,
                    fontSize: 12.sp,
                    fontFamily: "DMSansMed"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 161.w),
              child: Text(
                "EMAIL",
                style: TextStyle(
                    color: textColour,
                    fontSize: 12.sp,
                    fontFamily: "DMSansMed"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 171.w),
              child: Text(
                "PHONE",
                style: TextStyle(
                    color: textColour,
                    fontSize: 12.sp,
                    fontFamily: "DMSansMed"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 172.w),
              child: Text(
                "CONTACT REASON",
                style: TextStyle(
                    color: textColour,
                    fontSize: 12.sp,
                    fontFamily: "DMSansMed"),
              ),
            ),
            isHide
                ? Padding(
                    padding: EdgeInsets.only(left: 269.w),
                    child: Container(
                      height: 23.h,
                      width: 86.w,
                      color: Color(0xffE6E6E6),
                      child: Center(
                        child: Text(
                          "Hide",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: "DMSansMed",
                              fontSize: 12.sp),
                        ),
                      ),
                    ),
                  )
                : Text("")
          ],
        ),
      ),
    );
  }
}
