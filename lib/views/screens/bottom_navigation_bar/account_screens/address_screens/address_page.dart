// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../globals/globals.dart';

class AddressPage extends StatefulWidget {
  // const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  void initState() {
    super.initState();

    Permission.location.request();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   Permission.location.request();
  // }

  Placemark? placeMark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("menu_page", (route) => false);
              // Navigator.of(context).pushReplacementNamed("menu_page");
              setState(() {
                addAddress = false;
              });
            },
            child: Icon(
              Icons.arrow_back,
            )),
        title: Text(
          "Your Addresses",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: (addAddress == false)
          ? Container(
              alignment: Alignment.center,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        addAddress = true;
                      });
                      // Navigator.of(context).pushReplacementNamedmed("");
                    },
                    child: Icon(
                      Icons.location_on_rounded,
                      color: Colors.grey.shade400,
                      size: 90,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "No Added Addresses!",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    textAlign: TextAlign.center,
                    "You can add your addresses for delivery\nwhen you order.",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 12,
                        // fontWeight: FontWeight.w900,
                        letterSpacing: 0.3),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () async {
                        var status = Permission.location.status;
                        if (await status.isDenied) {
                          Permission.location.request();
                        }
                        Geolocator.getPositionStream()
                            .listen((Position position) async {
                          setState(() {
                            Global.lat = position.latitude;
                            Global.long = position.longitude;
                          });

                          List placeMarkList = await placemarkFromCoordinates(
                              Global.lat, Global.long);

                          setState(() {
                            placeMark = placeMarkList[0];
                          });
                        });
                        setState(() {
                          Global.mapLocation =
                              "https://www.google.co.in/search?q=$Global.lat,$Global.long";
                        });
                        Navigator.of(context)
                            .pushReplacementNamed("address_location_page");

                        // showGoogleMapLocationPicker(
                        //     context: context,
                        //     pinWidget: Icon(Icons.location_pin),
                        //     apiKey: 'AIzaSyBKEbxu1TpyVgw6ZgncDkjy1Cy-bEM6Ch4',
                        //     appBarTitle: 'location',
                        //     searchHint: 'search',
                        //     addressTitle: 'dfg',
                        //     initialLocation: LatLng(Global.lat, Global.long),
                        //     confirmButtonText: "dsfszf",
                        //     language: 'en',
                        //     country: 'in',
                        //     addressPlaceHolder: "HELLO",
                        //     confirmButtonColor: color,
                        //     pinColor: Colors.blue,
                        //     confirmButtonTextColor: Colors.blue);
                      },
                      //
                      // onPressed: () {
                      //   setState(() {
                      //     Global.mapLocation =
                      //         "https://www.google.co.in/search?q=${Global.lat},${Global.long}";
                      //   });
                      //   // Navigator.of(context).pushReplacementNamedmed("maps");
                      //   Navigator.of(context)
                      //       .pushReplacementNamedmed("address_location_page");
                      // },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.grey,
                        primary: color,
                        fixedSize: Size(250, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 10),
                          Text(
                            "Add New Address",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ],
              ),
            )
          : Container(
              alignment: Alignment.center,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "You can add your addresses for delivery\nwhen you order.",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontSize: 12,
                        // fontWeight: FontWeight.w900,
                        letterSpacing: 0.3),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 10,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 3),
                            Text(
                              "My Home",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Egypt,New Cairo, Tahrir Square,street 10,\n12 Building.",
                              style: GoogleFonts.montserrat(
                                  fontSize: 11, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 10,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 3),
                            Text(
                              "My Work",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Egypt,New Cairo, Tahrir Square,street 10,\n12 Building.",
                              style: GoogleFonts.montserrat(
                                  fontSize: 11, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () async {
                        var status = Permission.location.status;
                        if (await status.isDenied) {
                          Permission.location.request();
                        }
                        Geolocator.getPositionStream()
                            .listen((Position position) async {
                          setState(() {
                            Global.lat = position.latitude;
                            Global.long = position.longitude;
                          });

                          List placeMarkList = await placemarkFromCoordinates(
                              Global.lat, Global.long);

                          setState(() {
                            placeMark = placeMarkList[0];
                          });
                        });
                        setState(() {
                          Global.mapLocation =
                              "https://www.google.co.in/search?q=$Global.lat,$Global.long";
                        });
                        Navigator.of(context)
                            .pushReplacementNamed("address_location_page");
                      },

                      // onPressed: () {
                      //   setState(() {
                      //     Global.mapLocation =
                      //         "https://www.google.co.in/search?q=${Global.lat},${Global.long}";
                      //   });
                      //   // Navigator.of(context).pushReplacementNamedmed("maps");
                      //   Navigator.of(context)
                      //       .pushReplacementNamedmed("address_location_page");
                      // },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.grey,
                        backgroundColor: color,
                        fixedSize: Size(250, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 10),
                          Text(
                            "Add New Address",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),

                  // ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       shadowColor: Colors.grey,
                  //       primary: color,
                  //       fixedSize: Size(250, 45),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30),
                  //       ),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(Icons.add),
                  //         SizedBox(width: 10),
                  //         Text(
                  //           "Add New Address",
                  //           style: GoogleFonts.montserrat(fontSize: 13),
                  //         ),
                  //       ],
                  //     )),
                ],
              ),
            ),
    );
  }
}