// ignore_for_file: file_names

import 'package:app/Views/Home/Head.dart';
import 'package:app/Views/Home/offers.dart';
import 'package:app/Views/Home/servicecards.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const HeadTop(),
              Offers(),
              ServiceCards(),
              // TrandingService(),
            ],
          )),
    );
  }
}
