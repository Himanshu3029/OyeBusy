// ignore_for_file: must_be_immutable

import 'package:app/Conrtoller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceCards extends StatelessWidget {
  ServiceCards({Key? key}) : super(key: key);
  List list = [
    "Category_AC",
    "Category_Electrician",
    "Category_Plumber",
    "Category_CCTV",
    "Category_Carpenter",
    "Category_Packer_Mover",
    "Category_Cleaning",
    "Category_Painter",
    "Category_Home_Appliance",
    "Disinfection",
    "Category_Pest_control",
  ];
  List list1 = [
    "AC Service",
    "Electrician",
    "Plumber",
    "CCTV",
    "Carpenter",
    "Packers & Movers",
    "Cleaning",
    "House Painting",
    "Home Appliance",
    "Disinfection",
    "Pest Control",
  ];

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.95,
      child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(list.length, (index) {
            return GestureDetector(
              onTap: () {
                controller.moveToPaymentPage();
              },
              child: Card(
                  shape: Border.all(
                      width: 0.8,
                      color: Colors.grey.shade300,
                      style: BorderStyle.solid),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("images/" + list[index] + ".png"),
                        height: 45,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        list1[index],
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
            );
          })),
    );
  }
}
//
      // height: MediaQuery.of(context).size.height * 0.8,
      // width: MediaQuery.of(context).size.width * 0.95,
// OutlinedButton(
//               onPressed: () {},
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image(
//                     image: AssetImage("images/" + list[index] + ".png"),
//                     height: 50,
//                   ),
//                   const SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     list1[index],
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(fontSize: 16, color: Colors.black),
//                   )
//                 ],
//               ),