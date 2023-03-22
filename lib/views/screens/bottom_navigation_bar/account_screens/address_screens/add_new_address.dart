// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../globals/globals.dart';

class AddNewAddressPage extends StatefulWidget {
  const AddNewAddressPage({Key? key}) : super(key: key);

  @override
  State<AddNewAddressPage> createState() => _AddNewAddressPageState();
}

class _AddNewAddressPageState extends State<AddNewAddressPage> {
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

  Placemark? placeMark;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("address_location_page");
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Add New Address",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.all(10),
          height: 70,
          width: _width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 3,
                color: Colors.grey.withOpacity(0.5),
              )
            ],
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 40),
                  primary: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("address_page");
                  setState(() {
                    addAddress = true;
                  });
                },
                child: Text(
                  "Save Address",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          )),
      body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Location",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: greyColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Edit Location",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: greyColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 150,
                      width: _width / 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/location.png"),
                        ),
                      ),
                      child: GoogleMap(
                          zoomControlsEnabled: false,
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
                    FloatingActionButton(
                      mini: true,
                      onPressed: () async {
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
                      child: Icon(Icons.edit_location),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Title",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                // Container(
                //   padding: EdgeInsets.only(left: 20),
                //   alignment: Alignment.centerLeft,
                //   height: 40,
                //   width: _width,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     border: Border.all(color: Colors.grey),
                //   ),
                //   child: Text("My Home"),
                // ),
                TextFormField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 20),
                    isDense: true,
                    hintText: "My Home",
                    hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                Text(
                  "Area",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 20),
                    isDense: true,
                    hintText: "Zed Sheikh",
                    hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // SizedBox(height: 20),
                Text(
                  "Block",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 20),
                    isDense: true,
                    hintText: "Block 3",
                    hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // SizedBox(height: 20),
                Text(
                  "Street Name",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 20),
                    isDense: true,
                    hintText: "512 Sharq Street",
                    hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // SizedBox(height: 20),
                Text(
                  "Building",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextFormField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 20),
                    isDense: true,
                    hintText: "Building 11",
                    hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // SizedBox(height: 20),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Floor Number",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: greyColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 20),
                              isDense: true,
                              hintText: "2",
                              hintStyle: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontSize: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apartment Number",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: greyColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 20),
                              isDense: true,
                              hintText: "1",
                              hintStyle: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontSize: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Phone Number",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                IntlPhoneField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding:
                        EdgeInsets.only(left: 10, top: 5, bottom: 18),
                    hintText: "Your Phone Number",
                    hintStyle: GoogleFonts.montserrat(
                      color: greyColor,
                      fontSize: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          )),
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