// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class ActiveCirclePage45 extends StatefulWidget {
  const ActiveCirclePage45({Key? key}) : super(key: key);

  @override
  State<ActiveCirclePage45> createState() => _ActiveCirclePage45State();
}

class _ActiveCirclePage45State extends State<ActiveCirclePage45> {
  bool isLike = false;
  bool isLike2 = false;
  bool isLike3 = false;
  bool isLike4 = false;
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    dynamic _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff242C46),
        centerTitle: true,
        title: Text(
          "Active Circles",
          style: GoogleFonts.montserrat(
              fontSize: 14, fontWeight: FontWeight.bold, color: color),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                showCategoryModalSheet();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 1,
                fixedSize: Size(_width, _height / 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Sort by",
                    style:
                        GoogleFonts.montserrat(color: greyColor, fontSize: 14),
                  ),
                  Spacer(),
                  Text(
                    "Ending Soon",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "2 Active Circles",
              style: GoogleFonts.montserrat(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("group_circle_2022");
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.blueGrey.withOpacity(0.3),
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
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text.rich(
                          TextSpan(
                            text: "Group Circle 2022\n",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            children: [
                              TextSpan(
                                  text: "5 people are left\n",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: greyColor)),
                              TextSpan(
                                  text: "for circle completion",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: Colors.grey)),
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
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.blueGrey.withOpacity(0.3),
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
                          "4",
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text.rich(
                        TextSpan(
                          text: "Tomato Circle\n",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          children: [
                            TextSpan(
                                text: "8 people are left\n",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10, color: Colors.blueGrey)),
                            TextSpan(
                                text: "for circle completion",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10, color: Colors.grey)),
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
            SizedBox(height: 10),
            Center(
              child: Text(
                "Want to create your own circle?",
                style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 13),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed("create_circle_page");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 1,
                    fixedSize: Size(_width, _height / 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/circleCreate.png",
                        scale: 1.5,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Create New Circle",
                        style: GoogleFonts.montserrat(
                            color: color,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  showCategoryModalSheet() {
    return showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, StateSetter setter) {
            return Container(
              height: 320,
              padding:
                  EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.sort,
                        color: greyColor,
                        size: 22,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sort Circles by",
                        style: GoogleFonts.montserrat(
                          color: greyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(
                          "assets/images/close.png",
                          color: Colors.black,
                          scale: 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1.5,
                  ),

                  SizedBox(height: 10),
                  // (isLike = true)
                  //     ? Row(
                  //         children: [
                  //           InkWell(
                  //             onTap: () {
                  //               setState(() {
                  //                 isLike = false;
                  //               });
                  //             },
                  //             child: Text(
                  //               "Recommended Soon",
                  //               style: GoogleFonts.montserrat(
                  //                   color: Colors.black, fontWeight: FontWeight.bold),
                  //             ),
                  //           ),
                  //           Spacer(),
                  //           Icon(
                  //             Icons.done,
                  //             color: Color(0xff00F300),
                  //           )
                  //         ],
                  //       )
                  //     :
                  InkWell(
                    onTap: () {
                      setter(() {
                        isLike = !isLike;
                        isLike2 = false;
                        isLike3 = false;
                        isLike4 = false;
                      });
                    },
                    child: (isLike == true)
                        ? Row(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Recommended",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.done,
                                color: Color(0xff00F300),
                              )
                            ],
                          )
                        : Text(
                            "Recommended",
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                  ),

                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      setter(() {
                        isLike2 = !isLike2;
                        isLike = false;
                        isLike3 = false;
                        isLike4 = false;
                      });
                    },
                    child: (isLike2 == true)
                        ? Row(
                            children: [
                              Text(
                                "Ending Soon",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.done,
                                color: Color(0xff00F300),
                              )
                            ],
                          )
                        : Text(
                            "Ending Soon",
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      setter(() {
                        isLike3 = !isLike3;
                        isLike = false;
                        isLike2 = false;
                        isLike4 = false;
                      });
                    },
                    child: (isLike3 == true)
                        ? Row(
                            children: [
                              Text(
                                "Have More Places",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.done,
                                color: Color(0xff00F300),
                              )
                            ],
                          )
                        : Text(
                            "Have More Places",
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                  ),

                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      setter(() {
                        isLike4 = !isLike4;
                        isLike = false;
                        isLike2 = false;
                        isLike3 = false;
                      });
                    },
                    child: (isLike4 == true)
                        ? Row(
                            children: [
                              Text(
                                "Have Few Places",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.done,
                                color: Color(0xff00F300),
                              )
                            ],
                          )
                        : Text(
                            "Have Few Places",
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: color,
                      fixedSize: Size(450, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text(
                          "Apply Sorting ",
                          style: GoogleFonts.montserrat(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
