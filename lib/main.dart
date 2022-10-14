// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:app/Conrtoller/HomePageController.dart';
import 'package:app/Views/Accounts_screen.dart';
import 'package:app/Views/Booking_screen.dart';
import 'package:app/Views/Favourite_screen.dart';
import 'package:app/Views/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: "/", page: () => HomePage()),
      //   GetPage(name: "/Accounts", page: () => AccountPage()),
      // ],
    );
  }
}

class HomePage extends GetView<HomePageController> {
  @override
  HomePageController controller = Get.put(HomePageController());

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabindex,
          children: [
            const Home(),
            const BookingPage(),
            const FavouritePage(),
            const AccountPage(),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                "images/Vector.png",
                width: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Bookings",
              icon: Image.asset(
                "images/Group 846.png",
                width: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Favourite",
              icon: Image.asset(
                "images/Group 847.png",
                width: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Accounts",
              icon: Image.asset(
                "images/Group 848.png",
                width: 20,
              ),
            )
          ],
          unselectedItemColor: Colors.black,
          onTap: controller.ChangeTab,
          currentIndex: controller.tabindex,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
        ),
      );
    });
  }
}
