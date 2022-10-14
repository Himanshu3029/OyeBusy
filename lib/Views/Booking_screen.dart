// ignore_for_file: file_names

import 'package:app/Conrtoller/BookingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingPage extends GetView<BookingController> {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Booking")),
    );
  }
}
