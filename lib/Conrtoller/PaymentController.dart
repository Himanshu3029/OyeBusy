// ignore_for_file: file_names, avoid_print

import 'package:get/get.dart';

class PaymentList {
  final int money;
  final String title;
  final String subtitle;

  PaymentList({
    required this.subtitle,
    required this.money,
    required this.title,
  });
}

class PaymentController extends GetxController {
  List<PaymentList> list = [];

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    List<PaymentList> server = [
      PaymentList(money: 500, title: "Item", subtitle: "Ac Split Service x 1"),
      PaymentList(
          money: 50, title: "Visiting Charges", subtitle: "Oye Busy Money"),
    ];
    list.assignAll(server);
    print(list);
    update();
  }
}
