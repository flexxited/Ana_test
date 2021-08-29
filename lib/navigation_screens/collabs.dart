import 'package:flexxited_ana_orders/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Collabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 42.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 9.w),
                child: Text(
                  "Collabs",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "PoppinsMed",
                      color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(
                width: 762.w,
              ),
              SearchBar()
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 23.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 854.w,
                  height: 620.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      border: Border.all(color: Color(0xffCECECE), width: 1.w)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, top: 30.h, right: 30.w),
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text("Brand Name")),
                          DataColumn(label: Text("Brand Logo")),
                          DataColumn(
                              label: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Text(
                              "Banner",
                              //     textAlign: TextAlign.center,
                            ),
                          )),
                          DataColumn(
                              label: Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: Text("Actions"),
                          ))
                        ],
                        dataRowHeight: 48.h,
                        dataTextStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14.sp,
                            fontFamily: "PoppinsReg"),
                        columnSpacing: 140.w,
                        horizontalMargin: 27.w,
                        headingTextStyle: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 14.sp,
                            fontFamily: "PoppinsReg"),
                        headingRowHeight: 35.h,
                        headingRowColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor),
                        dividerThickness: 0,
                        //   decoration: ,
                        rows: [
                          buildDataRow(
                              "Brand Name",
                              "Brand Logo",
                              "Banner.jpg",
                              Icon(
                                Icons.remove_circle_outline,
                                size: 20.sp,
                                color: Color(0xffD10404),
                              ),
                              MaterialStateProperty.all(Color(0xffFFFFFF))),
                          buildDataRow(
                              "Brand Name",
                              "Brand Logo",
                              "Banner.jpg",
                              Icon(
                                Icons.remove_circle_outline,
                                size: 20.sp,
                                color: Color(0xffD10404),
                              ),
                              MaterialStateProperty.all(Color(0xffF2F2F2))),
                          buildDataRow(
                              "Brand Name",
                              "Brand Logo",
                              "Banner.jpg",
                              Icon(
                                Icons.remove_circle_outline,
                                size: 20.sp,
                                color: Color(0xffD10404),
                              ),
                              MaterialStateProperty.all(Color(0xffFFFFFF))),
                          buildDataRow(
                              "Brand Name",
                              "Brand Logo",
                              "Banner.jpg",
                              Icon(
                                Icons.remove_circle_outline,
                                size: 20.sp,
                                color: Color(0xffD10404),
                              ),
                              MaterialStateProperty.all(Color(0xffF2F2F2))),
                          buildDataRow(
                              "Brand Name",
                              "Brand Logo",
                              "Banner.jpg",
                              Icon(
                                Icons.remove_circle_outline,
                                size: 20.sp,
                                color: Color(0xffD10404),
                              ),
                              MaterialStateProperty.all(Color(0xffFFFFFF))),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 23.h, left: 37.w),
                  child: Container(
                    width: 265.w,
                    height: 53.h,
                    color: Theme.of(context).primaryColor,
                    child: Center(
                      child: Text(
                        "+ Add Collab",
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 14.sp,
                            fontFamily: "PoppinsReg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  DataRow buildDataRow(String rowItem1, String rowItem2, String rowItem3,
      Icon rowItem4, MaterialStateProperty<Color> colour) {
    return DataRow(cells: [
      DataCell(Text(rowItem1)),
      DataCell(Text(rowItem2)),
      DataCell(Text(
        rowItem3,
        style: TextStyle(
            fontFamily: "DMSansReg", decoration: TextDecoration.underline),
      )),
      DataCell(Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: rowItem4,
      )),
    ], color: colour);
  }
}
