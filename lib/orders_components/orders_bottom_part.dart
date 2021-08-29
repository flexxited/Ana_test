import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomPart extends StatefulWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  _BottomPartState createState() => _BottomPartState();
}

class _BottomPartState extends State<BottomPart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 11.h),
      child: Column(children: [
        Container(
          width: 1094.w,
          height: 55.h,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE6E6E6), width: 1),
            color: Theme.of(context).accentColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReusableTextField(
                text: "ID 848548544",
                colour: Theme.of(context).primaryColor,
                padding: 32,
                fontFamily: "PoppinsSemiBold",
              ),
              ReusableTextField(
                padding: 39,
                colour: Color(0xff5B5B5B),
                text: "3 items",
                fontFamily: "PoppinsReg",
              ),
              ReusableTextField(
                padding: 35,
                colour: Color(0xff5B5B5B),
                text: "Total Amount",
                fontFamily: "PoppinsReg",
              ),
              ReusableTextField(
                padding: 42,
                colour: Color(0xff5B5B5B),
                text: "Name",
                fontFamily: "PoppinsReg",
              ),
              ReusableTextField(
                  padding: 409.5,
                  colour: Color(0xffD10404),
                  text: "DECLINE",
                  fontFamily: "PoppinsMed"),
              ReusableTextField(
                  padding: 82.5,
                  colour: Color(0xff44B424),
                  text: "ACCEPT",
                  fontFamily: "PoppinsMed")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 11.h),
          child: Container(
            width: 1094.w,
            height: 55.h,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE6E6E6), width: 1),
              color: Theme.of(context).accentColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableTextField(
                  text: "ID 848548544",
                  colour: Theme.of(context).primaryColor,
                  padding: 32,
                  fontFamily: "PoppinsSemiBold",
                ),
                ReusableTextField(
                  padding: 39,
                  colour: Color(0xff5B5B5B),
                  text: "3 items",
                  fontFamily: "PoppinsReg",
                ),
                ReusableTextField(
                  padding: 35,
                  colour: Color(0xff5B5B5B),
                  text: "Total Amount",
                  fontFamily: "PoppinsReg",
                ),
                ReusableTextField(
                  padding: 42,
                  colour: Color(0xff5B5B5B),
                  text: "Name",
                  fontFamily: "PoppinsReg",
                ),
                ReusableTextField(
                    padding: 409.5,
                    colour: Color(0xffD10404),
                    text: "DECLINE",
                    fontFamily: "PoppinsMed"),
                ReusableTextField(
                    padding: 82.5,
                    colour: Color(0xff44B424),
                    text: "ACCEPT",
                    fontFamily: "PoppinsMed")
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ReusableTextField extends StatelessWidget {
  String text;
  double padding;
  Color colour;
  String fontFamily;
  ReusableTextField(
      {required this.padding,
      required this.colour,
      required this.text,
      required this.fontFamily});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding.w),
      child: Text(
        text,
        style:
            TextStyle(color: colour, fontSize: 14.sp, fontFamily: fontFamily),
      ),
    );
  }
}
