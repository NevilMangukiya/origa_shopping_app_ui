// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../globals/globals.dart';
import '../../../models/categoryModel.dart';

class BottomHomePage extends StatefulWidget {
  const BottomHomePage({Key? key}) : super(key: key);

  @override
  State<BottomHomePage> createState() => _BottomHomePageState();
}

class _BottomHomePageState extends State<BottomHomePage> {
  int activeIndex = 0;
  int currentIndex = 0;

  bool like = false;
  bool like2 = false;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Hello",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Ahmed👋",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(width: 5),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed("notification_page");
                      },
                      child: Icon(
                        CupertinoIcons.bell_fill,
                        size: 20,
                        color: color,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed("cart_page");
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: color,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: greyColor),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    prefixIconColor: Colors.grey,
                    isDense: true,
                    contentPadding:
                        EdgeInsets.only(left: 5, right: 0, bottom: 1),
                    hintText: "What do you want?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      // gapPadding: 25,
                    ),
                  ),
                  // cursorHeight: 1,
                ),
                // child: Row(
                //   children: [
                //     Icon(
                //       Icons.search,
                //       size: 20,
                //       color: Colors.grey,
                //     ),
                //     SizedBox(width: 10),
                //     Text(
                //       "What do you want?",
                //       style: TextStyle(color: Colors.grey, fontSize: 12),
                //     )
                //   ],
                // ),
                // ),
                SizedBox(height: 15),
                Container(
                  // margin: EdgeInsets.only(left: 20, right: 20),
                  height: 150,
                  width: 550,
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: CarouselSlider(
                    carouselController: controller,
                    items: carouselSlider
                        .map(
                          (e) => Container(
                            // width: 450,
                            height: 50,
                            // margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(e), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                        initialPage: activeIndex,
                        onPageChanged: (i, reason) {
                          setState(() {
                            activeIndex = i;
                          });
                        },
                        enlargeCenterPage: true,
                        // scrollPhysics: BouncingScrollPhysics(),
                        enlargeFactor: 0.35,
                        // aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        pageSnapping: true,
                        autoPlay: false,
                        // height: 250,

                        autoPlayCurve: Curves.fastOutSlowIn),
                  ),
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  effect: SlideEffect(
                    dotHeight: 8,
                    dotWidth: 10,
                  ),
                  activeIndex: activeIndex,
                  count: carouselSlider.length,
                  onDotClicked: (val) {
                    controller.animateToPage(val);
                  },
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "All Categories",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed("category_details_page");
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: categoryList
                        .map((e) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(e.routes);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("${e.image}")),
                                      border: Border.all(
                                          color: Colors.red, width: 3),
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    "${e.name}",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: greyColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ))
                        .toList()),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Hot Deals",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.local_fire_department,
                      // FaIcon(),
                      size: 17,
                      color: Colors.red,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("hot_deal_page");
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  // margin: EdgeInsets.only(left: 20, right: 20),
                  height: 120,
                  width: 550,
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: CarouselSlider(
                    // carouselController: controller,
                    items: carouselSlider
                        .map(
                          (e) => Container(
                            // width: 450,
                            height: 50,
                            // margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(e), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                        // initialPage: activeIndex,
                        onPageChanged: (i, reason) {},
                        enlargeCenterPage: true,
                        scrollPhysics: BouncingScrollPhysics(),
                        enlargeFactor: 0.35,
                        // aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        pageSnapping: true,
                        autoPlay: false,
                        // height: 250,

                        autoPlayCurve: Curves.fastOutSlowIn),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Top Products",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("top_products_screen");
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                      color: Colors.red,
                    ),
                  ],
                ),
                // SizedBox(height: 20),
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
                                      color: color,
                                      fontWeight: FontWeight.bold),
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
                                    style: TextStyle(
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                  style: TextStyle(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
        ),
      ),
    );
  }
}