import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 324.w,
      child: Material(
        child: TextFormField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.only(top: 10.w, bottom: 10.w, right: 20.w),
              child: Icon(
                Icons.search,
                size: 25.sp,
                color: Color(0xff827F7F),
              ),
            ),
            filled: true,
            fillColor: Color(0xffE6E6E6),
            hintText: "Search",
            hintStyle: TextStyle(
                color: Color(0xff827F7F),
                fontFamily: "PoppinsMed",
                fontSize: 16.sp),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
