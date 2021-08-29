import 'package:flexxited_ana_orders/controllers/inventory_controller.dart';
import 'package:flexxited_ana_orders/controllers/nav_controller.dart';
import 'package:flexxited_ana_orders/navigation_screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navigation_screens/blogs.dart';
import 'navigation_screens/careers.dart';
import 'navigation_screens/collabs.dart';
import 'navigation_screens/collections.dart';
import 'navigation_screens/customers.dart';
import 'navigation_screens/dashboard.dart';
import 'navigation_screens/enquiries.dart';
import 'navigation_screens/inventory.dart';
import 'navigation_screens/offers_&_notices.dart';
import 'navigation_screens/reviews.dart';
import 'widgets/nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'navigation_screens/orders.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final inventoryController = Get.put(InventoryController());

  @override
  Widget build(BuildContext context) {
    List screens = [
      Dashboard(),
      Orders(),
      Inventory(),
      Collections(),
      Reviews(),
      Enquiries(),
      Collabs(),
      OffersNotices(),
      Blogs(),
      Customers(),
      Careers(),
      Settings()
    ];

    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Stack(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              NavBar(),
              Expanded(
                child: GetX<NavController>(builder: (controller) {
                  return screens[controller.activeIndex.value];
                }),
              )
            ]),
            GetX<InventoryController>(builder: (controller) {
              return controller.isNext.value
                  ? GestureDetector(
                      onTap: controller.isNext.toggle(),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black54.withOpacity(0.2),
                      ),
                    )
                  : Text("");
            })
          ],
        ));
  }
}
