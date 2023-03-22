// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class FamilyGroupPage extends StatefulWidget {
  const FamilyGroupPage({Key? key}) : super(key: key);

  @override
  State<FamilyGroupPage> createState() => _FamilyGroupPageState();
}

class _FamilyGroupPageState extends State<FamilyGroupPage> {
  bool isLike = false;
  bool isLike2 = false;
  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "My Family Group ",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("menu_page");
          },
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          Container(
            child: PopupMenuButton(
              enabled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onSelected: (i) {
                if (i == 1) {
                  Navigator.of(context)
                      .pushReplacementNamed("edit_community_page");
                } else if (i == 4) {
                  showLeaveDialog();
                } else if (i == 2) {
                  Navigator.of(context)
                      .pushReplacementNamed("invite_people_page");
                } else if (i == 3) {
                  Navigator.of(context)
                      .pushReplacementNamed("group_members_page");
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  height: 20,
                  child: Text(
                    "options",
                    style: GoogleFonts.montserrat(
                      fontSize: 11,
                      color: Colors.grey,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  onTap: () {
                    // Navigator.of(context).pushReplacementNamed("edit_community_page");
                  },
                  height: 20,
                  child: Text(
                    "Edit Community",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  height: 20,
                  child: Text(
                    "Invite People",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  height: 20,
                  child: Text(
                    "View Members",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  onTap: () {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) => AlertDialog(
                    //     title: Text(
                    //         "Are you sure you want to leave this community?"),
                    //   ),
                    // );
                  },
                  height: 20,
                  child: Text(
                    "Leave Community",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 285,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/person/p3.jpg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "My Family Group 2022",
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "🔒 Private Community",
                        style: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        textAlign: TextAlign.center,
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "25 Members",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("group_members_page");
                            },
                            child: Container(
                              height: 30,
                              margin: EdgeInsets.only(left: 20),
                              width: 120,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/person/p1.jpg"),
                                      radius: 15,
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    // right: ,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/person/p2.jpg"),
                                      radius: 15,
                                      backgroundColor: Colors.redAccent,
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    // right: ,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        "assets/images/person/p3.jpg",
                                      ),
                                      radius: 15,
                                      backgroundColor: Colors.amber,
                                    ),
                                  ),
                                  Positioned(
                                    left: 60,
                                    // right: ,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/person/p4.jpg"),
                                      radius: 15,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                  Positioned(
                                    left: 80,
                                    // right: ,
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey,
                                      child: Text(
                                        "+20",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  // CircleAvatar(radius: 10),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("invite_people_page");
                            },
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.blueGrey,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: Colors.white,
                              fixedSize: Size(80, 10),
                              minimumSize: Size(70, 30),
                            ),
                            child: Text(
                              "+ Invite",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black, fontSize: 12),
                            ),
                          ),
                          SizedBox(width: 20)
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xff6B738D).withOpacity(0.4),
                ),
                SizedBox(height: 10),
                Text(
                  "Recommended Items",
                  style: GoogleFonts.montserrat(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 20),
                Container(
                    height: 330,
                    padding: EdgeInsets.only(left: 10),
                    // margin: EdgeInsets.only(left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 5),
                            height: 300,
                            width: 180,
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
                                          isLike = !isLike;
                                        });
                                      },
                                      child: (isLike == false)
                                          ? Icon(
                                              CupertinoIcons.heart,
                                              color: Colors.red,
                                            )
                                          : Icon(
                                              CupertinoIcons.heart_solid,
                                              color: Colors.red,
                                            ),
                                    )
                                  ],
                                ),
                                Center(
                                  child: Image.asset(
                                    "assets/images/tomato.png",
                                    scale: 2.5,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Fresh Red Tomato Egyptian - 1Kg",
                                  style: GoogleFonts.montserrat(
                                      color: color,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Grocery - Vegetables",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "10 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Save 2.5 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: color,
                                    fixedSize: Size(width, height / 18),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text("Create Circle"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(right: 5),
                            height: 300,
                            width: 180,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
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
                                          isLike2 = !isLike2;
                                        });
                                      },
                                      child: (isLike2 == false)
                                          ? Icon(
                                              CupertinoIcons.heart,
                                              color: Colors.red,
                                            )
                                          : Icon(
                                              CupertinoIcons.heart_solid,
                                              color: Colors.red,
                                            ),
                                    )
                                  ],
                                ),
                                Center(
                                  child: Image.asset(
                                    "assets/images/tomato.png",
                                    scale: 2.5,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Fresh Red Tomato Egyptian - 1Kg",
                                  style: GoogleFonts.montserrat(
                                      color: color,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Grocery - Vegetables",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "10 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Save 2.5 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: color,
                                    fixedSize: Size(width, height / 18),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text("Create Circle"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                Divider(
                  thickness: 2,
                  color: Color(0xff6B738D).withOpacity(0.4),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 3,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 3,
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      "Fresh Red Tomato Egyptian - 1Kg",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "10 EGP",
                                      style: GoogleFonts.montserrat(
                                          color: color,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Save 2.5 EGP",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 55,
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
                                SizedBox(width: 25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      "Friends Circle 2022",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "3 People are left",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  height: 350,
                  width: double.infinity,
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
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 3,
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      "Fresh Red Tomato Egyptian - 1Kg",
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff6B738D),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "10 EGP",
                                      style: GoogleFonts.montserrat(
                                          color: color,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Save 2.5 EGP",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 55,
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
                                SizedBox(width: 25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      "Friends Circle 2022",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "3 People are left",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 5,
                                      color: Color(0xff00F300),
                                    ),
                                  ),
                                  child: Text(
                                    "3",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      "Circle 12",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "3 People are left",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red.shade50,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "00",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.pink,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  primary: Colors.grey.shade200),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "View More Circles",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.grey),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  showLeaveDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Container(
          alignment: Alignment.center,
          height: 151,
          width: 450,
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                "Are you sure you want to\nleave this community?",
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "It is a long established fact that a reader will be distracted by the readable.",
                style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.grey.shade200,
                        onPrimary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fixedSize: Size(110, 35)),
                    child: Text("Cancel"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.pink,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fixedSize: Size(110, 35)),
                    child: Text("Leave"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
