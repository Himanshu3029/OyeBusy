// ignore_for_file: non_constant_identifier_names, file_names

import 'package:get/get.dart';

class HomePageController extends GetxController {
  var tabindex = 0;
  void ChangeTab(int index) {
    tabindex = index;
    update();
  }
}
