// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

const double degrees2Radians = math.pi / 180.0;

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({Key? key}) : super(key: key);

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  Color blue = Color(0xff001D70);
  bool joined = false;
  int discover = 1;
  int create = 2;

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
    Colors.orange,
  ];

  // int _currentSliderValue = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Communities",
                    style: GoogleFonts.montserrat(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Icon(
                      CupertinoIcons.bell_fill,
                      color: blue,
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    child: Icon(
                      CupertinoIcons.cart_fill_badge_minus,
                      color: blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Connect your friends and groups",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 5),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        joined = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        color: (joined == false)
                            ? Color(0xff6B738D)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text(
                        "Joined",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: (joined == false) ? Colors.white : greyColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        color:
                            (joined == true) ? Color(0xff6B738D) : Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Discover",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: (joined == true) ? Colors.white : greyColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        joined = true;
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("create_community_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "+ Create",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: greyColor,
                            fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
              (joined == false)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 20, top: 20),
                            hintText: "Search for a community.",
                            hintStyle: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "There is 1 Community Group",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              color: greyColor,
                              fontSize: 13),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.5),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/person/p1.jpg"),
                                ),
                                title: Text(
                                  "Office Community Group 2022",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.8)),
                                ),
                                subtitle: Text(
                                  "24 Members",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Container(
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
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ),
                                    ),
                                    // CircleAvatar(radius: 10),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 20, top: 20),
                            hintText: "Search for a community.",
                            hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey, fontSize: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "There is 2 Community Group",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/person/p1.jpg"),
                                ),
                                title: Text(
                                  "Office Community Group 2022",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                subtitle: Text(
                                  "24 Members",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
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
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        // CircleAvatar(radius: 10),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.blueGrey,
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      primary: Colors.white,
                                      fixedSize: Size(70, 10),
                                      minimumSize: Size(70, 30),
                                    ),
                                    child: Text(
                                      "+ Join",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 11),
                                    ),
                                  ),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/person/p2.jpg"),
                                ),
                                title: Text(
                                  "Office Community Group 2022",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                subtitle: Text(
                                  "24 Members",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
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
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        // CircleAvatar(radius: 10),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.blueGrey,
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      primary: Colors.white,
                                      fixedSize: Size(70, 10),
                                      minimumSize: Size(70, 30),
                                    ),
                                    child: Text(
                                      "+ Join",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 11),
                                    ),
                                  ),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          ),
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

class MyPainter extends CustomPainter {
  const MyPainter({
    required this.colors,
  }) : super();

  final List<Color> colors;

  @override
  void paint(Canvas canvas, Size size) {
    var paths = <Color, Path>{};
    colors.asMap().forEach((index, color) {
      var degree = 360 / colors.length * (index + 0.5);
      var radian = degree * degrees2Radians;

      var path = _onePath(radian, size);

      if (index > 0) {
        path = Path.combine(
          PathOperation.difference,
          path,
          paths[colors[index - 1]]!,
        );
      }
      if (index == colors.length - 1) {
        paths[colors[0]] = Path.combine(
          PathOperation.reverseDifference,
          path,
          paths[colors[0]]!,
        );
      }
      paths[color] = path;
    });

    for (final color in colors) {
      var path = paths[color];

      final fillPaint = Paint()
        ..color = color
        ..style = PaintingStyle.fill;
      canvas.drawPath(path!, fillPaint);

      final strokePaint = Paint()
        ..color = Color(0xFFC4C4C4)
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.butt
        ..strokeWidth = 10;

      canvas.drawPath(path, strokePaint);
    }
  }

  Path _onePath(double radian, Size size) {
    var circleSize = 150.0;
    var center = size.center(Offset.zero);
    var maxSize = math.min(size.height, size.width) / 4;
    var sin = math.sin(radian);
    var cos = math.cos(radian);

    var rect = Rect.fromLTWH(
      center.dx - circleSize / 2 + (sin * maxSize),
      center.dy - circleSize / 2 + (cos * maxSize),
      circleSize,
      circleSize,
    );
    return Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          rect,
          Radius.circular(
            rect.height / 2,
          ),
        ),
      )
      ..close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}