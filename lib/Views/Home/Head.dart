// ignore_for_file: file_names

import 'package:app/Conrtoller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadTop extends StatefulWidget {
  const HeadTop({Key? key}) : super(key: key);

  @override
  State<HeadTop> createState() => _HeadTopState();
}

class _HeadTopState extends State<HeadTop> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: ListTile(
            leading: const Icon(
              Icons.location_on,
              size: 30,
            ),
            title: const Text("Current location, City ,State"),
            trailing: const Icon(Icons.arrow_drop_down, size: 30),
            onTap: () {
              controller.moveToGooglePage();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 35,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  style: const TextStyle(fontSize: 18, letterSpacing: 1),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Search for a service",
                    prefixIcon: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      // semanticLabel: "5",
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
          child: Image.asset("images/Line 41.png"),
        )
      ],
    );
  }
}
