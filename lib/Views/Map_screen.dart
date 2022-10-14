// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  // late GoogleMapController googleMapController;
  // static CameraPosition cameraPosition = const CameraPosition(
  //     target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14);
  // Set<Marker> markers = {};

  // Location() async {
  //   Position position = await determine();
  //   googleMapController.animateCamera(CameraUpdate.newCameraPosition(
  //       CameraPosition(
  //           target: LatLng(position.latitude, position.longitude), zoom: 14)));

  //   // Marker(markerId: )
  // }

  // Future<Position> determine() async {
  //   Position position = await Geolocator.getCurrentPosition();
  //   return position;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Location"),
        ),
        body: Column(
          children: [
            // GoogleMap(
            //   initialCameraPosition: cameraPosition,
            //   markers: markers,
            //   zoomControlsEnabled: false,
            //   mapType: MapType.normal,
            //   onMapCreated: (GoogleMapController controller) {
            //     googleMapController = controller;
            //   },
            // ),

            const Padding(
              padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Flat/Building/Street",
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Name",
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              ),
            ),

            // Buttons
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Address Type",
                style: TextStyle(color: Colors.purple, fontSize: 18),
              ),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.home),
                        Text("Home"),
                      ],
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.work),
                        Text("Office"),
                      ],
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.bookmark),
                        Text("Others"),
                      ],
                    )),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Type 'Others' name (Optional)",
                style: TextStyle(color: Colors.purple, fontSize: 18),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Guest house",
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              side: BorderSide.none, borderRadius: BorderRadius.circular(20)),
          label: const Text(
            "Add Address",
          ),
          backgroundColor: Colors.purple,
        ));
  }
}
