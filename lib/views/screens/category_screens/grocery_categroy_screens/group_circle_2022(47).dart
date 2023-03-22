// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:circle_list/circle_list.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class GroupCirclePage extends StatefulWidget {
  const GroupCirclePage({Key? key}) : super(key: key);

  @override
  State<GroupCirclePage> createState() => _GroupCirclePageState();
}

class _GroupCirclePageState extends State<GroupCirclePage> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Group Circle 2022",
          style:
              GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              showInviteModalSheet();
            },
            child: Icon(
              Icons.share,
              size: 20,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 20, right: 15, top: 20),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 8,
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
                      color: greyColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Only 4 Free Spaces",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "15",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  " EGP",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (i == 1) {
                        i = 1;
                      } else {
                        i--;
                      }
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "$i",
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    setState(() {
                      i++;
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
                ),
              ],
            ),
            Text(
              "Save 5 EGP",
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
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
                      color: Color(0xff00F300),
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
                        "Join This Circle",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body:
          //         (isChangeCircle == false)
          // ?
          Column(
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
                            backgroundImage:
                                AssetImage("assets/images/person/p1.jpg"),
                          ),
              ),
            ],
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

  showBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => Container(
        height: 410,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/images/LeaveCircle.png",
                scale: 0.5,
                color: Color(0xff00F300),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Are you sure you want to\njoin this circle?",
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
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade100,
              child: Row(
                children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: 10),
                  Text(
                    "You will pay 10,400 EGP will\nto confirm joining the circle.",
                    style:
                        GoogleFonts.montserrat(color: greyColor, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("Cancel"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("checkout_page");
                    setState(() {
                      joinGroup = true;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color(0xff00F300),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "Join Circle",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
