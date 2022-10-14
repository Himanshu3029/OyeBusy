// ignore_for_file: file_names

import 'package:app/Conrtoller/FavouriteController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouritePage extends GetView<FavouriteController> {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Favourite")),
    );
  }
}
