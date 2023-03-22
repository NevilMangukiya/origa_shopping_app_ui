// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:origa/globals/globals.dart';

class TopProductScreen extends StatefulWidget {
  const TopProductScreen({Key? key}) : super(key: key);

  @override
  State<TopProductScreen> createState() => _TopProductScreenState();
}

class _TopProductScreenState extends State<TopProductScreen> {
  bool like = false;
  bool like2 = false;
  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Top Products",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, color: color, fontSize: 16),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 420,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context)
                        //     .pushNamed("grocery_details_page43");
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 400,
                        width: 200,
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
                                Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.red.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Hot Deal 🔥",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.red),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      like = !like;
                                    });
                                  },
                                  child: (like == false)
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
                                scale: 2.5,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Fresh Red Tomato Egyptian - 1Kg",
                              style: TextStyle(
                                  color: color, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Grocery - Vegetables",
                              style: TextStyle(
                                  color: Color(0xff6B738D), fontSize: 12),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "10 EGP",
                              style: TextStyle(
                                  color: color,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(
                                    "grocery_details_page43");
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(width, height / 17),
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
                                fixedSize: Size(width, height / 17),
                                primary: Color(0xff00F300),
                                onPrimary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text("Buy in a Circle"),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                "Save 2.5 EGP",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Days",
                                      style: TextStyle(
                                          color: Colors.redAccent.shade100,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Days",
                                      style: TextStyle(
                                          color: Colors.redAccent.shade100,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Days",
                                      style: TextStyle(
                                          color: Colors.redAccent.shade100,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Days",
                                      style: TextStyle(
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
                      height: 400,
                      width: 200,
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
                                    like2 = !like2;
                                  });
                                },
                                child: (like2 == false)
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
                              scale: 2.5,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Fresh Red Tomato Egyptian - 1Kg",
                            style: TextStyle(
                                color: color, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Grocery - Vegetables",
                            style: TextStyle(
                                color: Color(0xff6B738D), fontSize: 12),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "10 EGP",
                            style: TextStyle(
                                color: color,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(width, height / 17),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Buy Now"),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(width, height / 17),
                              primary: Color(0xff00F300),
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Buy in a Circle"),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Save 2.5 EGP",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: TextStyle(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: TextStyle(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: TextStyle(
                                        color: Colors.redAccent.shade100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Days",
                                    style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
