// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:circle_list/circle_list.dart';
import 'package:circle_list/radial_drag_gesture_detector.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class Page67 extends StatefulWidget {
  const Page67({Key? key}) : super(key: key);

  @override
  State<Page67> createState() => _Page67State();
}

class _Page67State extends State<Page67> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 25,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff242C46),
        title: Text(
          "iPhone 12 Circle 2022",
          style: GoogleFonts.montserrat(
              fontSize: 14,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w900,
              color: Color(0xff242C46)),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            color: Colors.red.shade50,
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: "The Circle\n",
                    style:
                        GoogleFonts.montserrat(color: Colors.red, fontSize: 10),
                    children: [
                      TextSpan(
                        text: "Will close after",
                        style: GoogleFonts.montserrat(
                            color: Colors.pink,
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
                            color: Colors.red, fontWeight: FontWeight.bold)),
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
                            color: Colors.red, fontWeight: FontWeight.bold)),
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
                            color: Colors.red, fontWeight: FontWeight.bold)),
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
                            color: Colors.red, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CircleList(
            rotateMode: RotateMode.stopRotate,
            outerRadius: 130,
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
                      "8",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff242C46),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Joined People",
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
                (index) =>
                    ((index == 8 || index == 7 || index == 6) || index == 5)
                        ? DottedBorder(
                            borderType: BorderType.Circle,
                            child: Container(
                              height: 35,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.red,
                            backgroundImage: (index == 1 ||
                                    index == 3 ||
                                    index == 9 ||
                                    index == 5 ||
                                    index == 10 ||
                                    index == 12)
                                ? AssetImage("assets/images/person/p1.jpg")
                                : AssetImage("assets/images/person/p3.jpg"),
                          ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "You have 2 Spaces",
            style: GoogleFonts.montserrat(
                color: Color(0xff6B738D),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Do you want to change your circle?",
            style: GoogleFonts.montserrat(
              color: Color(0xff6B738D),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        content: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 238,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/LeaveCircle.png",
                                scale: 0.5,
                                color: Color(0xffFFD000),
                              ),
                              SizedBox(height: 30),
                              Text(
                                textAlign: TextAlign.center,
                                "Are you sure you want to\nchange your circle?",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Text(
                                textAlign: TextAlign.center,
                                "It is long estabilsed fact that a reader will be distracted by the readable.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10, color: Color(0xff6B738D)),
                              ),
                              SizedBox(height: 15),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.grey.shade200,
                                      onPrimary: Colors.black26,
                                      elevation: 0,
                                      fixedSize: Size(90, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    child: Text("Cancel"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed("success_page");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffFFD000),
                                      onPrimary: Colors.black,
                                      fixedSize: Size(135, 30),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    child: Text("Change"),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ));
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 40,
                width: 450,
                decoration: BoxDecoration(
                    color: Color(0xffFFD000),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/LeaveCircle.png",
                      scale: 1.5,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Change To This Circle",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showInviteModalSheet();
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 40,
                width: 450,
                decoration: BoxDecoration(
                    border: Border.all(color: color),
                    // color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Invite.png",
                      scale: 1.5,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Invite People",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Invite your friend to join the circle",
            style: GoogleFonts.montserrat(
              color: Color(0xff6B738D),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  showInviteModalSheet() {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(20),
        height: 280,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Share and Invite People",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/logo/whatsapp.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/logo/sms.png"),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/logo/twitter.png"),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/logo/facebook.png"),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/logo/instagram.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.link),
                SizedBox(width: 10),
                Text("Copy a Link"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 10),
                Text("Invite a People"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.people_alt),
                SizedBox(width: 10),
                Text("Invite From Communities"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
