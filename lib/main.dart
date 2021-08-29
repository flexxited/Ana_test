import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'admin_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1440, 768),
        builder: () => GetMaterialApp(
              theme: ThemeData(
                primaryColor: Color(0xff000000),
                accentColor: Color(0xffFFFFFF),
              ),
              home: AdminPage(),
            ));
  }
}
