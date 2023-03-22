// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class ActiveCirclePage extends StatefulWidget {
  const ActiveCirclePage({Key? key}) : super(key: key);

  @override
  State<ActiveCirclePage> createState() => _ActiveCirclePageState();
}

class _ActiveCirclePageState extends State<ActiveCirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (isOpen == false)
          ? SafeArea(
              child: Container(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Active Circles",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(width: 5),
                          Spacer(),
                          Icon(
                            CupertinoIcons.bell_solid,
                            size: 20,
                            color: color,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.shopping_cart,
                            size: 20,
                            color: color,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "See your circles state",
                        style: GoogleFonts.montserrat(
                            fontSize: 11, color: greyColor),
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 2),
                      SizedBox(height: 120),
                      Center(child: Image.asset("assets/images/cir.png")),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "No Active Circles!",
                          style: GoogleFonts.montserrat(
                              color: color, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "There is no joined circles now",
                          style: GoogleFonts.montserrat(
                              fontSize: 11, color: greyColor),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isOpen = true;
                          });
                        },
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                                // color: Colors.greenAccent,
                                color: Color(0xff00F300),
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "Start Shopping",
                              style: GoogleFonts.montserrat(
                                  color: color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : SafeArea(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("circle_page2");
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My Active Circle",
                              style: GoogleFonts.montserrat(
                                  color: color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(width: 5),
                            Spacer(),
                            Icon(
                              CupertinoIcons.bell_solid,
                              size: 20,
                              color: color,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.shopping_cart,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "See your circles state",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Divider(thickness: 2),
                        SizedBox(height: 10),
                        Text(
                          "1 Active Circle",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6,
                                color:
                                    Colors.blueGrey.shade200.withOpacity(0.5),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 5,
                                        color: Color(0xff00F300),
                                      ),
                                    ),
                                    child: Text(
                                      "7",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text.rich(
                                    TextSpan(
                                      text: "iPhone 12 Circle 2022\n",
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: "5 people are left\n",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: greyColor)),
                                        TextSpan(
                                            text: "for circle completion",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 10,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: "The Circle\n",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.red, fontSize: 10),
                                      children: [
                                        TextSpan(
                                          text: "Will close after",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade50,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          text: "00",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.pink,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade50,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          text: "02",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.pink,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade50,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          text: "45",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.pink,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade50,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          text: "26",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.pink,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

List image = [
  'assets/images/person/p1.png',
  'assets/images/person/p2.png',
  'assets/images/person/p3.png',
  'assets/images/person/p4.png',
  'assets/images/person/p5.png',
  'AA',
  "MO"
];
