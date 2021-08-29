import 'package:flexxited_ana_orders/widgets/reusable_top_bar_container.dart';
import 'package:flexxited_ana_orders/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flexxited_ana_orders/controllers/inventory_controller.dart';
import 'package:get/get.dart';

class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return GetX<InventoryController>(builder: (controller) {
      return Padding(
          padding: EdgeInsets.only(
              top: controller.isAddNewProduct.value ? 0.h : 42.h, left: 21.w),
          child:
              controller.isAddNewProduct.value ? RowLayout() : ColumnLayout());
    });
  }
}

class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableTopBar(
          padding: 453,
        ),
        Padding(
          padding: EdgeInsets.only(top: 23.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableInventoryCard(),
              Padding(
                padding: EdgeInsets.only(top: 22.h, left: 45.h),
                child: GetBuilder<InventoryController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      controller.isAddNewProduct.toggle();
                      print(controller.isNext.value);
                    },
                    child: Container(
                      width: 253.w,
                      height: 53.h,
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Text(
                          "+Add new Product",
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 14.sp,
                              fontFamily: "PoppinsReg"),
                        ),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        )
      ],
    );
  }
}

class RowLayout extends StatelessWidget {
  // InventoryController control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 42.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReusableTopBar(
                padding: 155,
              ),
              Padding(
                padding: EdgeInsets.only(top: 23.h),
                child: ReusableInventoryCard(),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Container(
              height: double.infinity,
              //width: 333.2.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffCECECE), width: 1.w),
                  color: Theme.of(context).accentColor),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, top: 45.h, right: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add New Product",
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Theme.of(context).primaryColor,
                          fontFamily: "PoppinsMed"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70.h),
                      child: Material(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "PRODUCT NAME",
                            labelStyle: TextStyle(
                                color: Color(0xff9E9E9E),
                                fontSize: 12.sp,
                                fontFamily: "DMSansMed"),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(
                                    color: Color(0xffE8E8E8), width: 1.sp)),
                            filled: false,
                            fillColor: Theme.of(context).accentColor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1.sp)),
                          ),
                          cursorColor: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "PRODUCT DESCRIPTION",
                          labelStyle: TextStyle(
                              color: Color(0xff9E9E9E),
                              fontSize: 12.sp,
                              fontFamily: "DMSansMed"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(
                                  color: Color(0xffE8E8E8), width: 1.sp)),
                          filled: false,
                          //focusColor: Theme.of(context).primaryColor,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 1.sp)),
                        ),
                        cursorColor: Theme.of(context).primaryColor,
                        // autofocus: true,
                        minLines: 6,
                        maxLines: 8,
                      ),
                    ),
                    ReusableDropdowContainer(text: "Categories"),
                    ReusableDropdowContainer(text: "Sub Categories"),
                    ReusableDropdowContainer(text: "Collections"),
                    Padding(
                      padding: EdgeInsets.only(top: 44.h),
                      child:
                          GetBuilder<InventoryController>(builder: (control) {
                        return GestureDetector(
                          onTap: control.isNext.toggle(),
                          child: Container(
                            height: 45.h,
                            width: 305.w,
                            color: Theme.of(context).primaryColor,
                            child: Center(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 14.sp,
                                    fontFamily: "PoppinsReg"),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28.h),
                      child: Center(
                        child:
                            GetBuilder<InventoryController>(builder: (control) {
                          return GestureDetector(
                            onTap: () => control.isAddNewProduct.toggle(),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 12.sp,
                                  fontFamily: "PoppinsReg",
                                  decoration: TextDecoration.underline),
                            ),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ReusableDropdowContainer extends StatelessWidget {
  String text;
  ReusableDropdowContainer({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Container(
        width: 305.w,
        height: 45.h,
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                text,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 14.sp,
                    fontFamily: "PoppinsReg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Icon(
                Icons.arrow_drop_down,
                color: Theme.of(context).accentColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableInventoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440.h,
      width: 852.w,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffCECECE), width: 1),
        color: Theme.of(context).accentColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 37.h, left: 37.w),
            child: Image.asset(
              "assets/images/inventory_item1.png",
              width: 114.w,
              height: 184.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 37.h, left: 40.w),
            child: Image.asset(
              "assets/images/inventory_item2.png",
              width: 114.w,
              height: 184.h,
            ),
          )
        ],
      ),
    );
  }
}

class ReusableTopBar extends StatelessWidget {
  double padding;

  ReusableTopBar({required this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReusableTopBarcontainer(
            text: "Products",
            padding: 45.w,
            fontSize: 16.sp,
            colour: Theme.of(context).primaryColor,
          ),
          ReusableTopBarcontainer(
            text: "Sub Categories",
            padding: 45.w,
            fontSize: 16.sp,
          ),
          ReusableTopBarcontainer(
            text: "Sub Categories",
            padding: 0.w,
            isPadding: false,
            fontSize: 16.sp,
          ),
          SizedBox(
            width: padding.w,
          ),
          SearchBar()
        ],
      ),
    );
  }
}
