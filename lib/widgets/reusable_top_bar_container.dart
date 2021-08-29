import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableTopBarcontainer extends StatelessWidget {
  final String text;
  final bool isPadding;
  final Color colour;
  final double padding;
  final double fontSize;
  ReusableTopBarcontainer(
      {required this.text,
      this.isPadding = true,
      this.colour = const Color(0xff827F7F),
      required this.padding,
      required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isPadding ? padding : 0),
      child: Text(
        text,
        style: TextStyle(
            color: colour, fontSize: fontSize, fontFamily: "PoppinsMed"),
      ),
    );
  }
}
