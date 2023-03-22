// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../globals/globals.dart';

class AddressLocationPage extends StatefulWidget {
  const AddressLocationPage({Key? key}) : super(key: key);

  @override
  State<AddressLocationPage> createState() => _AddressLocationPageState();
}

class _AddressLocationPageState extends State<AddressLocationPage> {
  Completer<GoogleMapController> mapController = Completer();
  late CameraPosition position;

  @override
  void initState() {
    super.initState();
    // Permission.location.request();

    position = CameraPosition(
      target: LatLng(Global.lat, Global.long),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Address Location",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Stack(
                children: [
                  Container(
                    height: 750,
                    child: GoogleMap(
                        zoomControlsEnabled: true,
                        zoomGesturesEnabled: true,
                        trafficEnabled: true,
                        scrollGesturesEnabled: true,
                        onMapCreated: (GoogleMapController controller) {
                          mapController.complete(controller);
                        },
                        initialCameraPosition: position,
                        markers: <Marker>{
                          Marker(
                            markerId: const MarkerId("Current Location"),
                            position: LatLng(Global.lat, Global.long),
                          ),
                        }),
                  ),
                ],
              ),

              // Image.asset("assets/images/location.png"),
              Container(
                  padding: EdgeInsets.all(15),
                  height: 70,
                  width: 420,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(18))),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 20),
                      prefixIcon: Icon(Icons.search),
                      hintText: "What do you want?",
                      hintStyle: GoogleFonts.montserrat(
                          color: greyColor, fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )),
              Positioned(
                // left: 100,
                right: 20,
                bottom: 100,
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.white,
                  foregroundColor: color,
                  onPressed: () async {
                    // PlacePicker(
                    //   apiKey: 'AIzaSyBKEbxu1TpyVgw6ZgncDkjy1Cy-bEM6Ch4',
                    //   initialPosition: LatLng(Global.lat, Global.long),
                    //   onPlacePicked: (result) {
                    //     // print(result.address);
                    //     Navigator.of(context).pop();
                    //   },
                    //   resizeToAvoidBottomInset: false,
                    //   zoomGesturesEnabled: true,
                    // );
                    setState(() {
                      position = CameraPosition(
                        target: LatLng(Global.lat, Global.long),
                        zoom: 12,
                      );
                    });

                    final GoogleMapController controller =
                        await mapController.future;
                    controller.animateCamera(
                        CameraUpdate.newCameraPosition(position));
                  },
                  child: Icon(
                    Icons.my_location,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 10,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 45),
                    primary: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed("add_new_address_page");
                  },
                  child: Text(
                    "Confirm Address",
                    style: GoogleFonts.montserrat(
                        fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              )
              // ElevatedButton(onPressed: () {}, child: Text("Ddfc"))
            ],
          ),
          // Image.asset("assets/images/location.png"),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     setState(() {
      //       position = CameraPosition(
      //         target: LatLng(Global.lat, Global.long),
      //         zoom: 12,
      //       );
      //     });
      //     final GoogleMapController controller = await mapController.future;
      //     controller.animateCamera(CameraUpdate.newCameraPosition(position));
      //   },
      //   backgroundColor: Colors.white,
      //   child: const Icon(Icons.gps_fixed, color: Colors.black),
      // ),
      /// TODO ::::

      // body: Column(
      //   children: [
      //     Container(
      //       height: 350,
      //       child: GoogleMap(
      //           zoomControlsEnabled: true,
      //           zoomGesturesEnabled: true,
      //           trafficEnabled: true,
      //           scrollGesturesEnabled: true,
      //           onMapCreated: (GoogleMapController controller) {
      //             mapController.complete(controller);
      //           },
      //           initialCameraPosition: position,
      //           markers: <Marker>{
      //             Marker(
      //               markerId: const MarkerId("Current Location"),
      //               position: LatLng(Global.lat, Global.long),
      //             ),
      //           }),
      //     ),
      //   ],
      // ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    position = CameraPosition(
      target: LatLng(Global.lat, Global.long),
    );
  }
}