import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardMiddlePart extends StatelessWidget {
  const DashboardMiddlePart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 36.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ReusableContainer(
                title1: "NEW ORDERS",
                value1: "125k",
                title2: "IN PROGRESS",
                value2: "12k",
                title3: "COMPLETED",
                value3: "88k",
              ),
              ReusableContainer(
                title1: "TOT ORDERS",
                value1: "125k",
                title2: "ORDER AMT",
                value2: "12k",
                title3: "AVG OREDR SIZE",
                value3: "88k",
              ),
              ReusableContainer(
                title1: "NEW USERS",
                value1: "125k",
                title2: "TOTAL USERS",
                value2: "12k",
                title3: "COMPLETED",
                value3: "88k",
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Container(
              width: 556.w,
              height: 331.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD9D9D9), width: 1),
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 19.h, left: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Satisfaction",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18.sp,
                          fontFamily: "PoppinsMed"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: Row(
                        children: rating(),
                      ),
                    ),
                    ReusableRatingRow(
                      padding: 45,
                      stars: 5,
                      percentage: 80,
                      yellowWidth: 301,
                    ),
                    ReusableRatingRow(
                        yellowWidth: 114, stars: 4, percentage: 20),
                    ReusableRatingRow(yellowWidth: 5, stars: 3, percentage: 0),
                    ReusableRatingRow(yellowWidth: 5, stars: 2, percentage: 0),
                    ReusableRatingRow(yellowWidth: 5, stars: 1, percentage: 0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReusableRatingRow extends StatelessWidget {
  double padding;
  double yellowWidth;
  double stars;
  double percentage;

  ReusableRatingRow(
      {this.padding = 24,
      required this.yellowWidth,
      required this.stars,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: padding.h),
        child: Row(
          children: [
            Text(
              "$stars star",
              style: TextStyle(
                  color: Color(0xff5B5B5B),
                  fontSize: 14.sp,
                  fontFamily: "DMSansReg"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: Stack(
                children: [
                  Container(
                    width: 391.w,
                    height: 12.h,
                    color: Color(0xffF2F2F2),
                  ),
                  Container(
                    width: yellowWidth.w,
                    height: 12.h,
                    color: Color(0xffFFBE00),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.w),
              child: Text(
                "$percentage%",
                style: TextStyle(
                    fontFamily: "DMSansReg",
                    fontSize: 14.sp,
                    color: Color(0xff5B5B5B)),
              ),
            )
          ],
        ));
  }
}

List<Widget> rating() {
  List<Widget> stars = [];
  for (int i = 1; i <= 4; i++) {
    stars.add(Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Image.asset(
        "assets/images/yellow_star.png",
        width: 27.w,
        height: 19.h,
      ),
    ));
  }
  stars.add(Image.asset(
    "assets/images/white_star.png",
    width: 27.w,
    height: 19.h,
  ));
  stars.add(Padding(
    padding: EdgeInsets.only(left: 286.w),
    child: Text(
      "4.8/5",
      style: TextStyle(
          color: Color(0xff5B5B5B), fontFamily: "DMSansReg", fontSize: 16.sp),
    ),
  ));
  return stars;
}

class ReusableContainer extends StatelessWidget {
  String title1;
  String value1;
  String title2;
  String value2;
  String title3;
  String value3;

  ReusableContainer({
    required this.title1,
    required this.value1,
    required this.title2,
    required this.value2,
    required this.title3,
    required this.value3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 21.h),
      child: Container(
        height: 97.h,
        width: 556.w,
        color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            Container(
                height: 97.h,
                width: 28.w,
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        width: 1.w,
                        color: Theme.of(context).primaryColor),
                    color: Theme.of(context).accentColor),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "ORDERS",
                      style: TextStyle(
                          fontFamily: "PoppinsMed",
                          fontSize: 12.sp,
                          color: Theme.of(context).primaryColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 48.w, right: 92.h),
              child: ReusableColumn(value: value1, title: title1),
            ),
            Padding(
              padding: EdgeInsets.only(right: 102.w),
              child: ReusableColumn(value: value2, title: title2),
            ),
            ReusableColumn(value: value3, title: title3)
          ],
        ),
      ),
    );
  }
}

class ReusableColumn extends StatelessWidget {
  String title;
  String value;

  ReusableColumn({required this.value, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 21.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                  color: Color(0xffCECECE),
                  fontSize: 12.sp,
                  fontFamily: "RobotoReg")),
          SizedBox(
            height: 11.h,
          ),
          Text(
            value,
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 24.sp,
                fontFamily: "PoppinsMed"),
          )
        ],
      ),
    );
  }
}
