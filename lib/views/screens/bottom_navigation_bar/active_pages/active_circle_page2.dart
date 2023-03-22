// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:circle_list/circle_list.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class ActivePage2 extends StatefulWidget {
  const ActivePage2({Key? key}) : super(key: key);

  @override
  State<ActivePage2> createState() => _ActivePage2State();
}

class _ActivePage2State extends State<ActivePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('menu_page');
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "iPhone 12 Circle 2022",
          style:
              GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
        height: 135,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "You bought 2 items\nin this circle",
                  style:
                      GoogleFonts.montserrat(color: Colors.black, fontSize: 10),
                ),
                Spacer(),
                Text(
                  "12.100",
                  style: GoogleFonts.montserrat(
                      color: color, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  " EGP",
                  style: GoogleFonts.montserrat(
                      color: color, fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                showBottomSheet();
              },
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 35,
                  width: 450,
                  decoration: BoxDecoration(
                      // color: Colors.greenAccent,
                      color: Colors.red.shade100.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/LeaveCircle.png",
                        scale: 1.5,
                        color: Color(0xffFF265E).withOpacity(0.9),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Leave This Circle",
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFF265E),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
            // showInitialAnimation: true,
            // innerRadius: 50,
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("change_circle_page");
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                height: 35,
                width: 450,
                decoration: BoxDecoration(
                    // color: Colors.greenAccent,
                    color: Colors.orange.shade300,
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
                      "Change Circle",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: color,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              showInviteModalSheet();
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 35,
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
                          color: color, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Invite your friend to join the circle",
            style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }

  showBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => Container(
        height: 410,
        width: double.infinity,
        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
        child: Column(
          children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/images/LeaveCircle.png",
                scale: 0.4,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Are you sure you want to\nLeave this circle?",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "It is a long established fact that a reader\nwill be distracted by the readable",
              style: GoogleFonts.montserrat(fontSize: 10, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: 10),
                  Text(
                    "10,400 EGp will be added\non your wallet.",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("Cancel"),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("menu_page");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "Leave Circle",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
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
                ),
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
