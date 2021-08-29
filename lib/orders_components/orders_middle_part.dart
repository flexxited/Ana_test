import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddlePart extends StatefulWidget {
  @override
  _MiddlePartState createState() => _MiddlePartState();
}

class _MiddlePartState extends State<MiddlePart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 23.h),
      child: Container(
        height: 488.h,
        width: 1094.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffCECECE), width: 1),
          color: Theme.of(context).accentColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 21.h),
              child: Column(
                children: [
                  Container(
                      height: 406.h,
                      width: 333.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffCECECE), width: 1),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.h, left: 24.w),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deliverables",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: "PoppinsMed",
                                    color: Theme.of(context).primaryColor),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 18.h),
                                child: ReusableProductContainer(
                                  title: "ESSENTIAL CHIFFON HIJAB - BLACK",
                                  price: "₹500",
                                  quantity: "800",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15.h),
                                child: ReusableProductContainer(
                                  title: "ESSENTIAL CHIFFON HIJAB - BLACK",
                                  price: "₹500",
                                  quantity: "800",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15.h),
                                child: ReusableProductContainer(
                                  title: "ESSENTIAL CHIFFON HIJAB - BLACK",
                                  price: "₹500",
                                  quantity: "800",
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Container(
                    height: 47.h,
                    width: 333.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCECECE), width: 1),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text(
                            "Order Total : Rs.1498",
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 14.sp,
                                fontFamily: "PoppinsReg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 79.w),
                          child: Text(
                            "view details>",
                            style: TextStyle(
                                color: Color(0xff827F7F),
                                fontSize: 12.sp,
                                fontFamily: "PoppinsLight"),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 21.h, right: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 72.h,
                    width: 234.w,
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, right: 6.w),
                          child: Text(
                            "ID 848548544",
                            style: TextStyle(
                                fontFamily: "PoppinsMed",
                                color: Theme.of(context).accentColor,
                                fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 7.w),
                          child: Text(
                            "Cash on Delivery",
                            style: TextStyle(
                                color: Color(0xffCECECE),
                                fontSize: 16.sp,
                                fontFamily: "PoppinsReg"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.h),
                    child: Text(
                      "Address",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18.sp,
                          fontFamily: "PoppinsMed"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Container(
                      width: 337.w,
                      height: 157.h,
                      color: Color(0xffE6E6E6),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 30.w, right: 14.w, top: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Junaid Mohamed",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16.sp,
                                  fontFamily: "PoppinsReg"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Text(
                                "Bangalore. 185, Brigade Road, Bangalore. Bangalore. NO 650, 17th Main, 6th Block Koramangla, Bengaluru, Karnataka 560024",
                                style: TextStyle(
                                    fontFamily: "PoppinsLight",
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12.sp,
                                    letterSpacing: 0.12.sp),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Text(
                                "+915865896589 - xyz@gmail.com",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12.sp,
                                    fontFamily: "PoppinsMed"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 41.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 128.w,
                          height: 40.h,
                          color: Color(0xffD10404),
                          child: Center(
                            child: Text(
                              "DECLINE",
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 14.sp,
                                  fontFamily: "PoppinsMed"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Container(
                            width: 256.w,
                            height: 40.h,
                            color: Color(0xff44B424),
                            child: Center(
                              child: Text(
                                "ACCEPT",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 14.sp,
                                    fontFamily: "PoppinsMed"),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableProductContainer extends StatelessWidget {
  String title;
  String price;
  String quantity;

  ReusableProductContainer(
      {required this.title, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 68.w,
          height: 72.h,
          color: Color(0xffE6E6E6),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 114.w,
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: "PoppinsReg",
                      color: Theme.of(context).primaryColor,
                      fontSize: 12.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: "PoppinsReg",
                          fontSize: 14.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        quantity,
                        style: TextStyle(
                            color: Color(0xff5B5B5B),
                            fontSize: 12.sp,
                            fontFamily: "PoppinsReg"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
