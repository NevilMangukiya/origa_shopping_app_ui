// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../globals/globals.dart';

class MyFavoritesPage extends StatefulWidget {
  const MyFavoritesPage({Key? key}) : super(key: key);

  @override
  State<MyFavoritesPage> createState() => _MyFavoritesPageState();
}

class _MyFavoritesPageState extends State<MyFavoritesPage> {
  bool isLike = true;
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    dynamic _height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xff242C46),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "My Favorites",
            style: GoogleFonts.montserrat(
                color: Color(0xff242C46),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: (isLike == true)
            ? Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      "There is 1 item in the favorites",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 400,
                      width: 200,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isLike = false;
                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.heart_solid,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Image.asset(
                              "assets/images/tomato.png",
                              scale: 2.5,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Fresh Red Tomato Egyptian - 1Kg",
                            style: GoogleFonts.montserrat(
                                color: color, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Grocery - Vegetables",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff6B738D), fontSize: 12),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "10 EGP",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          // Container(
                          //   color: Colors.red,
                          //   alignment: Alignment.topLeft,
                          //   height: 50,
                          //   width: 350,
                          //   child: CustomPaint(
                          //     size: Size(
                          //         450,
                          //         (450)
                          //             .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          //     // painter: RPSCustomPainter(),
                          //     painter: RPSCustomPainter(),
                          //   ),
                          // ),
                          SizedBox(height: 10),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(_width, _height / 17),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Buy Now"),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(_width, _height / 17),
                              primary: Color(0xff00F300),
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Buy in a Circle"),
                          ),
                          SizedBox(height: 5),

                          Center(
                            child: Text(
                              "Save 2.5 EGP",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ),
                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).pushReplacementNamed("");
                      },
                      child: Icon(
                        CupertinoIcons.heart_solid,
                        color: Colors.grey.shade400,
                        size: 90,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "No Favorites Yet!",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      "You can add you favorite items here to\naccess them faster.",
                      style: GoogleFonts.montserrat(
                          color: greyColor,
                          fontSize: 12,
                          // fontWeight: FontWeight.w900,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed("grocery_category_page");
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.grey,
                        primary: color,
                        fixedSize: Size(190, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "Discover Products",
                        style: GoogleFonts.montserrat(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ));
  }
}
