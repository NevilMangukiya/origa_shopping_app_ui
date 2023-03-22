// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:circle_list/circle_list.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class CreateCirclePage extends StatefulWidget {
  const CreateCirclePage({Key? key}) : super(key: key);

  @override
  State<CreateCirclePage> createState() => _CreateCirclePageState();
}

class _CreateCirclePageState extends State<CreateCirclePage> {
  bool createCircle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      resizeToAvoidBottomInset: false,
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Create New Circle",
          style:
              GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   Icon(
        //     Icons.share,
        //     size: 20,
        //   ),
        //   SizedBox(width: 10),
        // ],
      ),
      bottomSheet: (createCircle == false)
          ? Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 172,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Buy in a Circle",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        "Only 11 Free Spaces",
                        style: GoogleFonts.montserrat(
                            color: color,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "7.5 ",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "EGP",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.remove),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1",
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            createCircle = true;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Save 2.5 EGP",
                    style:
                        GoogleFonts.montserrat(color: greyColor, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed("checkout_page");
                      setState(() {
                        joinGroup = true;
                      });
                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 35,
                        width: 450,
                        decoration: BoxDecoration(
                            // color: Colors.greenAccent,
                            color: Color(0xff00F300),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/circleCreate.png",
                              scale: 1.5,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Create Circle",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 172,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Buy in a Circle",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        "Only 10 Free Spaces",
                        style: GoogleFonts.montserrat(
                            color: color,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "15 EGP",
                        style: GoogleFonts.montserrat(
                            color: color,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            createCircle = false;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "2",
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Save 5 EGP",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed("checkout_page");
                      setState(() {
                        joinGroup = true;
                      });
                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 35,
                        width: 450,
                        decoration: BoxDecoration(
                            // color: Colors.greenAccent,
                            color: Color(0xff00F300),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/circleCreate.png",
                              scale: 1.5,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Create Circle",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      body: (createCircle == false)
          ? Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleList(
                    rotateMode: RotateMode.stopRotate,
                    // showInitialAnimation: true,
                    // innerRadius: 50,
                    outerRadius: 130,
                    animationSetting: AnimationSetting(),
                    origin: Offset(0, 0),
                    centerWidget: Container(
                        alignment: Alignment.center,
                        height: 1115,
                        width: 1050,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          border: Border.all(
                            color: Color(0xff00F300),
                            width: 7,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "11",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff242C46),
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "Available Spaces",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff242C46),
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                              ),
                            ),
                            Text(
                              "of Total 12",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff242C46),
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        )),
                    children: [
                      ...List.generate(
                          12,
                          (index) => (index == 9)
                              ? CircleAvatar(
                                  backgroundColor: Colors.red,
                                  backgroundImage:
                                      AssetImage("assets/images/person/p1.jpg"),
                                )
                              : DottedBorder(
                                  borderType: BorderType.Circle,
                                  child: Container(
                                    height: 35,
                                    width: 40,
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Circle Name",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "My Circle Tomato",
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400, fontSize: 12),
                      contentPadding:
                          EdgeInsets.only(left: 20, right: 20, top: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.blueGrey,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "You need to pay first to create\nyour own circle.",
                            style: GoogleFonts.montserrat(
                                color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleList(
                    rotateMode: RotateMode.stopRotate,
                    // showInitialAnimation: true,
                    // innerRadius: 50,
                    outerRadius: 130,
                    animationSetting: AnimationSetting(),
                    origin: Offset(0, 0),
                    centerWidget: Container(
                        alignment: Alignment.center,
                        height: 1115,
                        width: 1050,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          border: Border.all(
                            color: Color(0xff00F300),
                            width: 7,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "10",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff242C46),
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "Available Spaces",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff242C46),
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                              ),
                            ),
                            Text(
                              "of Total 12",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff242C46),
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        )),
                    children: [
                      ...List.generate(
                          12,
                          (index) => (index == 9 || index == 10)
                              ? CircleAvatar(
                                  backgroundColor: Colors.red,
                                  backgroundImage:
                                      AssetImage("assets/images/person/p1.jpg"),
                                )
                              : DottedBorder(
                                  borderType: BorderType.Circle,
                                  child: Container(
                                    height: 35,
                                    width: 40,
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Circle Name",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "My Circle Tomato",
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400, fontSize: 12),
                      contentPadding:
                          EdgeInsets.only(left: 20, right: 20, top: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.blueGrey,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "You need to pay first to create\nyour own circle.",
                            style: GoogleFonts.montserrat(
                                color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )),
                ],
              ),
            ),
    );
  }
}
