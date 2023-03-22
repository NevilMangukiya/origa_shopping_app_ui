// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class ChangeCirclePage extends StatefulWidget {
  const ChangeCirclePage({Key? key}) : super(key: key);

  @override
  State<ChangeCirclePage> createState() => _ChangeCirclePageState();
}

class _ChangeCirclePageState extends State<ChangeCirclePage> {
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    dynamic _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff242C46),
        centerTitle: true,
        title: Text(
          "Active Circles",
          style: GoogleFonts.montserrat(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
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
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Sort by",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Ending Soon",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
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
              "Select From the active circles",
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 10),
            Text(
              "2 Active Circles",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("page(67)");
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                height: 189,
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
                                fontWeight: FontWeight.bold, fontSize: 11),
                            children: [
                              TextSpan(
                                text: "5 people are left\n",
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Color(0xff6B738D),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "for circle completion",
                                style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
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
                                color: Color(0xffFF265E), fontSize: 10),
                            children: [
                              TextSpan(
                                text: "Will close after",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xffFF265E),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
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
                                    fontSize: 12,
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
                                    fontSize: 12,
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
                                    fontSize: 12,
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
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (context) => AlertDialog(
                          //           shape: RoundedRectangleBorder(
                          //               borderRadius:
                          //                   BorderRadius.circular(10)),
                          //           content: Container(
                          //             decoration: BoxDecoration(
                          //                 borderRadius:
                          //                     BorderRadius.circular(10)),
                          //             height: 238,
                          //             child: Column(
                          //               children: [
                          //                 Image.asset(
                          //                   "assets/images/LeaveCircle.png",
                          //                   scale: 0.5,
                          //                   color: Color(0xffFFD000),
                          //                 ),
                          //                 SizedBox(height: 30),
                          //                 Text(
                          //                   "Are you sure you want to\nchange your circle?",
                          //                   textAlign: TextAlign.center,
                          //                   style: GoogleFonts.montserrat(
                          //                       fontWeight: FontWeight.bold),
                          //                 ),
                          //                 SizedBox(height: 15),
                          //                 Text(
                          //                   textAlign: TextAlign.center,
                          //                   "It is long estabilsed fact that a reader will be distracted by the readable.",
                          //                   style: GoogleFonts.montserrat(
                          //                       fontSize: 10),
                          //                 ),
                          //                 SizedBox(height: 15),
                          //                 Row(
                          //                   mainAxisAlignment:
                          //                       MainAxisAlignment.spaceEvenly,
                          //                   children: [
                          //                     ElevatedButton(
                          //                       onPressed: () {
                          //                         Navigator.of(context).pop();
                          //                       },
                          //                       style: ElevatedButton.styleFrom(
                          //                         primary: Colors.grey.shade200,
                          //                         onPrimary: Colors.black26,
                          //                         elevation: 0,
                          //                         fixedSize: Size(110, 30),
                          //                         shape: RoundedRectangleBorder(
                          //                           borderRadius:
                          //                               BorderRadius.circular(
                          //                                   30),
                          //                         ),
                          //                       ),
                          //                       child: Text("Cancel"),
                          //                     ),
                          //                     ElevatedButton(
                          //                       onPressed: () {
                          //                         Navigator.of(context)
                          //                             .pushReplacementNamed(
                          //                                 "success_page");
                          //                       },
                          //                       style: ElevatedButton.styleFrom(
                          //                         primary: Color(0xffFFD000),
                          //                         onPrimary: Colors.black,
                          //                         elevation: 0,
                          //                         fixedSize: Size(110, 30),
                          //                         shape: RoundedRectangleBorder(
                          //                           borderRadius:
                          //                               BorderRadius.circular(
                          //                                   30),
                          //                         ),
                          //                       ),
                          //                       child: Text("Change"),
                          //                     ),
                          //                   ],
                          //                 )
                          //               ],
                          //             ),
                          //           ),
                          //         ));
                          showDialogBox();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffFFD000),
                          elevation: 1,
                          fixedSize: Size(_width, _height / 19),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Change To This Circle",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff001D70),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              height: 190,
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
                              fontWeight: FontWeight.bold, fontSize: 12),
                          children: [
                            TextSpan(
                              text: "8 people are left\n",
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: Color(0xff6B738D),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "for circle completion",
                              style: GoogleFonts.montserrat(
                                fontSize: 9,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("");
                        showDialogBox();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFFD000),
                        elevation: 1,
                        fixedSize: Size(_width, _height / 19),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Change To This Circle",
                        style: GoogleFonts.montserrat(
                            color: color,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showCategoryModalSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => Container(
        height: 307,
        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.sort,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  "Sort by",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff6B738D), fontSize: 15),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    "assets/images/close.png",
                    color: Colors.grey,
                    scale: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 1.5,
            ),
            Text(
              "Recommended",
              style: GoogleFonts.montserrat(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Ending Soon",
                  style: GoogleFonts.montserrat(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.done,
                  color: Color(0xff00F300),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Have More Places",
              style: GoogleFonts.montserrat(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              "Have Few Places",
              style: GoogleFonts.montserrat(color: Colors.grey),
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
              child: Text(
                "Apply Sorting ",
                style: GoogleFonts.montserrat(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDialogBox() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              content: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                      "Are you sure you want to\nchange your circle?",
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Text(
                      textAlign: TextAlign.center,
                      "It is long estabilsed fact that a reader will be distracted by the readable.",
                      style: GoogleFonts.montserrat(fontSize: 10),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade200,
                            onPrimary: Colors.black26,
                            elevation: 0,
                            fixedSize: Size(110, 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed("success_page");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFD000),
                            onPrimary: Colors.black,
                            elevation: 0,
                            fixedSize: Size(110, 30),
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
  }
}
