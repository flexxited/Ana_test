import 'package:get/get.dart';

class NavController extends GetxController {
  var activeIndex = 0.obs;

  changeIndex(var index) {
    activeIndex.value = index;
  }
}
