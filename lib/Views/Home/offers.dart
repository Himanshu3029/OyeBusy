// ignore_for_file: import_of_legacy_library_into_null_safe, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Offers extends StatelessWidget {
  Offers({Key? key}) : super(key: key);
  List data = ["1", "5"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Swiper(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            // return Image.asset("lib/icons/${data[index]}");
            return FittedBox(
              child: Image.asset(
                'images/${data[index]}.png',
              ),
              fit: BoxFit.cover,
            );
          },
          layout: SwiperLayout.DEFAULT,
          // pagination: SwiperPagination(),
          autoplay: true,
          // viewportFraction: 0.8,
          // // scrollDirection: Axis.horizontal,
          itemWidth: MediaQuery.of(context).size.width * 1,
          // itemCount: data.length,
          // scale: 0.9,
          // // scrollDirection: Axis.horizontal,
          // // itemHeight: 200,
        ),
      ),
    );
  }
}
