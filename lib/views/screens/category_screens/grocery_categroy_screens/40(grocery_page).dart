import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class Grocery40 extends StatefulWidget {
  const Grocery40({Key? key}) : super(key: key);

  @override
  State<Grocery40> createState() => _Grocery40State();
}

class _Grocery40State extends State<Grocery40> {
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
//             TextFormField(
//               decoration: InputDecoration(
//                 hintStyle: GoogleFonts.montserrat(
//                   fontWeight: FontWeight.w300,
//                   fontSize: 12,
//                 ),
//                 prefixIcon: Icon(
//                   Icons.search,
//                   size: 25,
//                 ),
//                 prefixIconColor: Colors.grey,
//                 isDense: true,
//                 contentPadding: EdgeInsets.only(left: 10, right: 0, bottom: 25),
//                 hintText: "What do you want?",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
// // gapPadding: 25,
//                 ),
//               ),
// // cursorHeight: 1,
//             ),
//             SizedBox(height: 10),
//             ButtonBar(
//               buttonHeight: 25,
//               buttonMinWidth: 50,
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "All items",
//                     style: GoogleFonts.montserrat(
//                         color: Colors.white, fontSize: 11),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "All items",
//                     style: GoogleFonts.montserrat(
//                         color: Colors.white, fontSize: 11),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "Vegatables",
//                     style:
//                         GoogleFonts.montserrat(color: greyColor, fontSize: 11),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "Fruits",
//                     style:
//                         GoogleFonts.montserrat(color: greyColor, fontSize: 11),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "Dry Fruits ",
//                     style:
//                         GoogleFonts.montserrat(color: greyColor, fontSize: 11),
//                   ),
//                 ),
//               ],
//             ),
                SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  height: 460,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
// fd
// Navigator.of(context)
//     .pushNamed("grocery_details_page43");
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 450,
                            width: 200,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 15,
                                    color:
                                        Colors.grey.shade400.withOpacity(0.5),
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Hot Deal",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10, color: Colors.red),
                                      ),
                                    ),
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
                                              color: Colors.grey,
                                            )
                                          : Icon(
                                              CupertinoIcons.heart_fill,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: Image.asset(
                                    "assets/images/tomato.png",
                                    scale: 2,
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
                                SizedBox(height: 10),

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
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        "grocery_details_page43");
                                  },
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
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        "grocery_details_page43");
                                  },
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
                                SizedBox(height: 10),

                                Center(
                                  child: Text(
                                    "Save 2.5 EGP",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                                SizedBox(height: 10),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 450,
                          width: 200,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 15,
                                  color: Colors.grey.shade400.withOpacity(0.5),
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
                                            color: Colors.grey,
                                          )
                                        : Icon(
                                            CupertinoIcons.heart_fill,
                                            color: Colors.red,
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 2,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Fresh Red Tomato Egyptian - 1Kg",
                                style: GoogleFonts.montserrat(
                                    color: color, fontWeight: FontWeight.bold),
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
                              SizedBox(height: 10),

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
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      "grocery_details_page43");
                                },
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
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      "grocery_details_page43");
                                },
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
                              SizedBox(height: 10),

                              Center(
                                child: Text(
                                  "Save 2.5 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              SizedBox(height: 10),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                  ),
                ),
                Container(
                  height: 470,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 450,
                          width: 200,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 15,
                                  color: Colors.grey.shade400.withOpacity(0.5),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    alignment: Alignment.center,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade100,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "Hot Deal",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 10, color: Colors.red),
                                    ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isLike3 = !isLike3;
                                      });
                                    },
                                    child: (isLike3 == false)
                                        ? Icon(
                                            CupertinoIcons.heart,
                                            color: Colors.grey,
                                          )
                                        : Icon(
                                            CupertinoIcons.heart_fill,
                                            color: Colors.red,
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 2,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Fresh Red Tomato Egyptian - 1Kg",
                                style: GoogleFonts.montserrat(
                                    color: color, fontWeight: FontWeight.bold),
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
                              SizedBox(height: 10),

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
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      "grocery_details_page43");
                                },
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
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      "grocery_details_page43");
                                },
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
                              SizedBox(height: 10),

                              Center(
                                child: Text(
                                  "Save 2.5 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              SizedBox(height: 10),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 450,
                          width: 200,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey.shade400.withOpacity(0.5),
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
                                        isLike4 = !isLike4;
                                      });
                                    },
                                    child: (isLike4 == false)
                                        ? Icon(
                                            CupertinoIcons.heart,
                                            color: Colors.grey,
                                          )
                                        : Icon(
                                            CupertinoIcons.heart_fill,
                                            color: Colors.red,
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 2,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Fresh Red Tomato Egyptian - 1Kg",
                                style: GoogleFonts.montserrat(
                                    color: color, fontWeight: FontWeight.bold),
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
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      "grocery_details_page43");
                                },
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
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      "grocery_details_page43");
                                },
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
                              SizedBox(height: 10),

                              Center(
                                child: Text(
                                  "Save 2.5 EGP",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              SizedBox(height: 10),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
//    Home(){
//     return  SingleChildScrollView(
//       physics: BouncingScrollPhysics(),
//       child: Container(
//         padding: EdgeInsets.only(left: 10, right: 10),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                 hintStyle: GoogleFonts.montserrat(
//                   fontWeight: FontWeight.w300,
//                   fontSize: 12,
//                 ),
//                 prefixIcon: Icon(
//                   Icons.search,
//                   size: 25,
//                 ),
//                 prefixIconColor: Colors.grey,
//                 isDense: true,
//                 contentPadding:
//                 EdgeInsets.only(left: 10, right: 0, bottom: 25),
//                 hintText: "What do you want?",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
// // gapPadding: 25,
//                 ),
//               ),
// // cursorHeight: 1,
//             ),
//             SizedBox(height: 10),
//             ButtonBar(
//               buttonHeight: 25,
//               buttonMinWidth: 50,
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "All items",
//                     style: GoogleFonts.montserrat(
//                         color: Colors.white, fontSize: 11),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "All items",
//                     style: GoogleFonts.montserrat(
//                         color: Colors.white, fontSize: 11),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "Vegatables",
//                     style: GoogleFonts.montserrat(
//                         color: greyColor, fontSize: 11),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "Fruits",
//                     style: GoogleFonts.montserrat(
//                         color: greyColor, fontSize: 11),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     "Dry Fruits ",
//                     style: GoogleFonts.montserrat(
//                         color: greyColor, fontSize: 11),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 460,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 5),
//                     InkWell(
//                       onTap: () {
// // fd
// // Navigator.of(context)
// //     .pushNamed("grocery_details_page43");
//                       },
//                       child: Container(
//                         padding: EdgeInsets.all(10),
//                         height: 450,
//                         width: 200,
//                         decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 15,
//                                 color:
//                                 Colors.grey.shade400.withOpacity(0.5),
//                               ),
//                             ],
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Container(
//                                   height: 20,
//                                   alignment: Alignment.center,
//                                   width: 70,
//                                   decoration: BoxDecoration(
//                                     color: Colors.red.shade100,
//                                     borderRadius:
//                                     BorderRadius.circular(10),
//                                   ),
//                                   child: Text(
//                                     "Hot Deal",
//                                     style: GoogleFonts.montserrat(
//                                         fontSize: 10, color: Colors.red),
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 InkWell(
//                                   onTap: () {
//                                     setState(() {
//                                       isLike = !isLike;
//                                     });
//                                   },
//                                   child: (isLike == false)
//                                       ? Icon(
//                                     CupertinoIcons.heart,
//                                     color: Colors.grey,
//                                   )
//                                       : Icon(
//                                     CupertinoIcons.heart_fill,
//                                     color: Colors.red,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 10),
//                             Center(
//                               child: Image.asset(
//                                 "assets/images/tomato.png",
//                                 scale: 2,
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             Text(
//                               "Fresh Red Tomato Egyptian - 1Kg",
//                               style: GoogleFonts.montserrat(
//                                   color: color,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Grocery - Vegetables",
//                               style: GoogleFonts.montserrat(
//                                   color: Colors.grey, fontSize: 12),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "10 EGP",
//                               style: GoogleFonts.montserrat(
//                                   color: color,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 10),
//
// // Container(
// //   color: Colors.red,
// //   alignment: Alignment.topLeft,
// //   height: 50,
// //   width: 350,
// //   child: CustomPaint(
// //     size: Size(
// //         450,
// //         (450)
// //             .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// //     // painter: RPSCustomPainter(),
// //     painter: RPSCustomPainter(),
// //   ),
// // ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.of(context)
//                                     .pushReplacementNamed(
//                                     "grocery_details_page43");
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 fixedSize: Size(_width, _height / 17),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                               ),
//                               child: Text("Buy Now"),
//                             ),
//                             SizedBox(height: 10),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.of(context)
//                                     .pushReplacementNamed(
//                                     "grocery_details_page43");
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 fixedSize: Size(_width, _height / 17),
//                                 primary: Color(0xff00F300),
//                                 onPrimary: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                               ),
//                               child: Text("Buy in a Circle"),
//                             ),
//                             SizedBox(height: 10),
//
//                             Center(
//                               child: Text(
//                                 "Save 2.5 EGP",
//                                 style: GoogleFonts.montserrat(
//                                     color: Colors.grey, fontSize: 12),
//                               ),
//                             ),
//                             SizedBox(height: 10),
//
//                             Row(
//                               mainAxisAlignment:
//                               MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "00",
//                                       style: GoogleFonts.montserrat(
//                                           color: Colors.pink,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       "Days",
//                                       style: GoogleFonts.montserrat(
//                                           color:
//                                           Colors.redAccent.shade100,
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "00",
//                                       style: GoogleFonts.montserrat(
//                                           color: Colors.pink,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       "Days",
//                                       style: GoogleFonts.montserrat(
//                                           color:
//                                           Colors.redAccent.shade100,
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "00",
//                                       style: GoogleFonts.montserrat(
//                                           color: Colors.pink,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       "Days",
//                                       style: GoogleFonts.montserrat(
//                                           color:
//                                           Colors.redAccent.shade100,
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "00",
//                                       style: GoogleFonts.montserrat(
//                                           color: Colors.pink,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       "Days",
//                                       style: GoogleFonts.montserrat(
//                                           color:
//                                           Colors.redAccent.shade100,
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       height: 450,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 15,
//                               color:
//                               Colors.grey.shade400.withOpacity(0.5),
//                             ),
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Spacer(),
//                               InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     isLike2 = !isLike2;
//                                   });
//                                 },
//                                 child: (isLike2 == false)
//                                     ? Icon(
//                                   CupertinoIcons.heart,
//                                   color: Colors.grey,
//                                 )
//                                     : Icon(
//                                   CupertinoIcons.heart_fill,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Center(
//                             child: Image.asset(
//                               "assets/images/tomato.png",
//                               scale: 2,
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           Text(
//                             "Fresh Red Tomato Egyptian - 1Kg",
//                             style: GoogleFonts.montserrat(
//                                 color: color,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             "Grocery - Vegetables",
//                             style: GoogleFonts.montserrat(
//                                 color: Colors.grey, fontSize: 12),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             "10 EGP",
//                             style: GoogleFonts.montserrat(
//                                 color: color,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10),
//
// // Container(
// //   color: Colors.red,
// //   alignment: Alignment.topLeft,
// //   height: 50,
// //   width: 350,
// //   child: CustomPaint(
// //     size: Size(
// //         450,
// //         (450)
// //             .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// //     // painter: RPSCustomPainter(),
// //     painter: RPSCustomPainter(),
// //   ),
// // ),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   "grocery_details_page43");
//                             },
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(_width, _height / 17),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   "grocery_details_page43");
//                             },
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(_width, _height / 17),
//                               primary: Color(0xff00F300),
//                               onPrimary: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: Text("Buy in a Circle"),
//                           ),
//                           SizedBox(height: 10),
//
//                           Center(
//                             child: Text(
//                               "Save 2.5 EGP",
//                               style: GoogleFonts.montserrat(
//                                   color: Colors.grey, fontSize: 12),
//                             ),
//                           ),
//                           SizedBox(height: 10),
//
//                           Row(
//                             mainAxisAlignment:
//                             MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: 470,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 5),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       height: 450,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 15,
//                               color:
//                               Colors.grey.shade400.withOpacity(0.5),
//                             ),
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 height: 20,
//                                 alignment: Alignment.center,
//                                 width: 70,
//                                 decoration: BoxDecoration(
//                                   color: Colors.red.shade100,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Text(
//                                   "Hot Deal",
//                                   style: GoogleFonts.montserrat(
//                                       fontSize: 10, color: Colors.red),
//                                 ),
//                               ),
//                               Spacer(),
//                               InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     isLike3 = !isLike3;
//                                   });
//                                 },
//                                 child: (isLike3 == false)
//                                     ? Icon(
//                                   CupertinoIcons.heart,
//                                   color: Colors.grey,
//                                 )
//                                     : Icon(
//                                   CupertinoIcons.heart_fill,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Center(
//                             child: Image.asset(
//                               "assets/images/tomato.png",
//                               scale: 2,
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           Text(
//                             "Fresh Red Tomato Egyptian - 1Kg",
//                             style: GoogleFonts.montserrat(
//                                 color: color,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             "Grocery - Vegetables",
//                             style: GoogleFonts.montserrat(
//                                 color: Colors.grey, fontSize: 12),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             "10 EGP",
//                             style: GoogleFonts.montserrat(
//                                 color: color,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10),
//
// // Container(
// //   color: Colors.red,
// //   alignment: Alignment.topLeft,
// //   height: 50,
// //   width: 350,
// //   child: CustomPaint(
// //     size: Size(
// //         450,
// //         (450)
// //             .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// //     // painter: RPSCustomPainter(),
// //     painter: RPSCustomPainter(),
// //   ),
// // ),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   "grocery_details_page43");
//                             },
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(_width, _height / 17),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   "grocery_details_page43");
//                             },
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(_width, _height / 17),
//                               primary: Color(0xff00F300),
//                               onPrimary: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: Text("Buy in a Circle"),
//                           ),
//                           SizedBox(height: 10),
//
//                           Center(
//                             child: Text(
//                               "Save 2.5 EGP",
//                               style: GoogleFonts.montserrat(
//                                   color: Colors.grey, fontSize: 12),
//                             ),
//                           ),
//                           SizedBox(height: 10),
//
//                           Row(
//                             mainAxisAlignment:
//                             MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       height: 450,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 10,
//                               color:
//                               Colors.grey.shade400.withOpacity(0.5),
//                             ),
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Spacer(),
//                               InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     isLike4 = !isLike4;
//                                   });
//                                 },
//                                 child: (isLike4 == false)
//                                     ? Icon(
//                                   CupertinoIcons.heart,
//                                   color: Colors.grey,
//                                 )
//                                     : Icon(
//                                   CupertinoIcons.heart_fill,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Center(
//                             child: Image.asset(
//                               "assets/images/tomato.png",
//                               scale: 2,
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           Text(
//                             "Fresh Red Tomato Egyptian - 1Kg",
//                             style: GoogleFonts.montserrat(
//                                 color: color,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             "Grocery - Vegetables",
//                             style: GoogleFonts.montserrat(
//                                 color: Colors.grey, fontSize: 12),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             "10 EGP",
//                             style: GoogleFonts.montserrat(
//                                 color: color,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold),
//                           ),
// // Container(
// //   color: Colors.red,
// //   alignment: Alignment.topLeft,
// //   height: 50,
// //   width: 350,
// //   child: CustomPaint(
// //     size: Size(
// //         450,
// //         (450)
// //             .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// //     // painter: RPSCustomPainter(),
// //     painter: RPSCustomPainter(),
// //   ),
// // ),
//                           SizedBox(height: 10),
//
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   "grocery_details_page43");
//                             },
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(_width, _height / 17),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   "grocery_details_page43");
//                             },
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(_width, _height / 17),
//                               primary: Color(0xff00F300),
//                               onPrimary: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: Text("Buy in a Circle"),
//                           ),
//                           SizedBox(height: 10),
//
//                           Center(
//                             child: Text(
//                               "Save 2.5 EGP",
//                               style: GoogleFonts.montserrat(
//                                   color: Colors.grey, fontSize: 12),
//                             ),
//                           ),
//                           SizedBox(height: 10),
//
//                           Row(
//                             mainAxisAlignment:
//                             MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "00",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.pink,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Days",
//                                     style: GoogleFonts.montserrat(
//                                         color: Colors.redAccent.shade100,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//    }
