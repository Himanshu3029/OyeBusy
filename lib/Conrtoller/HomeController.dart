// ignore_for_file: file_names

import 'package:app/Views/Map_screen.dart';
import 'package:app/Views/Payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void moveToGooglePage() {
    dialog();
    Future.delayed(const Duration(seconds: 3), () {
      hidedialog();
      Get.to(const Maps());
    });
  }

  void moveToPaymentPage() {
    dialog();
    Future.delayed(const Duration(seconds: 3), () {
      hidedialog();
      Get.to(Payment());
    });
  }

  void hidedialog() {
    Get.back();
  }

  void dialog() {
    Get.defaultDialog(
        title: "Please wait",
        barrierDismissible: false,
        content: Row(
          children: const [
            SizedBox(
              width: 14,
            ),
            CircularProgressIndicator(),
            SizedBox(
              width: 30,
            ),
            Text("Loading...")
          ],
        ));
  }
}
