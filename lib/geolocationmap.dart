// ignore_for_file: avoid_print

import 'package:geocoding/geocoding.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Geomap extends StatefulWidget {
  const Geomap({Key? key}) : super(key: key);

  @override
  State<Geomap> createState() => _GeomapState();
}

class _GeomapState extends State<Geomap> {
  Position? position;
  String? longitude;
  String? latitude;
  String? add1, add2;

  fetchposition() async {
    bool serviceEnabled;

    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      print("location service is disabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print("forever");
      }
      if (permission == LocationPermission.deniedForever) {
        print("location service is disabled");
      }
      Position current = await Geolocator.getCurrentPosition();
      var latitude = current.latitude;
      var longitude = current.longitude;
      var address = await placemarkFromCoordinates(latitude, longitude);
      // // List<Placemark> newplace = [];
      // Placemark placemark = newplace[0];

      // var address = await Geocoder.local
      //     .findAddressesFromCoordinates(Coordinates(latitude, longitude));
      setState(() {
        position = current;
        add1 = address.first.name;
        add2 = address.first.locality;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              position == null ? "location" : add1.toString(),
            ),
            Text(
              position == null ? "location2" : add2.toString(),
            ),
            ElevatedButton(
                onPressed: () {
                  fetchposition();
                },
                child: const Text("get location"))
          ],
        ),
      ),
    );
  }
}
