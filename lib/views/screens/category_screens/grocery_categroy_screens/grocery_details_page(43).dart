// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../globals/globals.dart';

class GroceryDetailPage2 extends StatefulWidget {
  const GroceryDetailPage2({Key? key}) : super(key: key);

  @override
  State<GroceryDetailPage2> createState() => _GroceryDetailPage2State();
}

class _GroceryDetailPage2State extends State<GroceryDetailPage2> {
  bool isAdd = false;
  int activeIndex = 0;
  int currentIndex = 0;

  int i = 1;

  bool isLike = false;

  CarouselController controller = CarouselController();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    dynamic _height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Buy Now",
            style: GoogleFonts.montserrat(
                fontSize: 15, fontWeight: FontWeight.bold, color: color),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Color(0xff242C46),
          actions: [
            InkWell(
                onTap: () {
                  setState(() {
                    isLike = !isLike;
                  });
                },
                child: (isLike == false)
                    ? Icon(
                        CupertinoIcons.heart,
                        // color: Colors.red,
                      )
                    : Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.red,
                      )),
            SizedBox(width: 10),
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
        body: (isAdd == false)
            ? Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider(
                        carouselController: controller,
                        items: tomatoSlider
                            .map(
                              (e) => Center(
                                child: Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 1.3,
                                ),
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
                      // Center(
                      //   child: Image.asset(
                      //     "assets/images/tomato.png",
                      //     scale: 1.3,
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      Center(
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: tomatoSlider.length,
                          effect: SlideEffect(
                            dotHeight: 8,
                            dotWidth: 30,
                            activeDotColor: Colors.red,
                          ),
                          onDotClicked: (i) {
                            setState(() {
                              activeIndex = i;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      Text(
                        "Egyptian Red Tomato - 1Kg",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Grocery - Vegetables",
                        style: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "10 ",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "EGP",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "I want to buy",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 60),
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
                              alignment: Alignment.center,
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade100,
                              ),
                              child: Icon(
                                Icons.remove,
                                size: 18,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "$i",
                            style: GoogleFonts.montserrat(
                              color: color,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  i++;

                                  isAdd = true;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed("active_circle_page45");
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
                          Navigator.of(context)
                              .pushReplacementNamed("active_circle_page45");
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
                          "Save 2.5 EGP when you join a circle",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Description",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: greyColor,
                            fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: greyColor),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "More Details",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: greyColor,
                            fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50.withOpacity(0.5),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Text(
                                    "Country",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "Egypt",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Text(
                                    "Weight",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "1 kg",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 11,
                                  child: Text(
                                    "Family",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "Solanaceae",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Text(
                                    "Calories",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "22 - 30",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Want to create your own circle?",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed("create_circle_page");
                        },
                        child: Center(
                          child: Text(
                            "Create New Circle",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              )
            : Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider(
                        carouselController: controller,
                        items: tomatoSlider
                            .map(
                              (e) => Center(
                                child: Image.asset(
                                  "assets/images/tomato.png",
                                  scale: 1.3,
                                ),
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
                      // Center(
                      //   child: Image.asset(
                      //     "assets/images/tomato.png",
                      //     scale: 1.3,
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      Center(
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: tomatoSlider.length,
                          effect: SlideEffect(
                            dotHeight: 8,
                            dotWidth: 30,
                            activeDotColor: Colors.red,
                          ),
                          onDotClicked: (i) {
                            setState(() {
                              activeIndex = i;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      Text(
                        "Egyptian Red Tomato - 1Kg",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Grocery - Vegetables",
                        style: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "10 ",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "EGP",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "I want to buy",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 60),
                          InkWell(
                            onTap: () {
                              setState(() {
                                i--;
                                isAdd = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade100,
                              ),
                              child: Icon(
                                Icons.remove,
                                size: 18,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "$i",
                            style: GoogleFonts.montserrat(
                              color: color,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(() {
                                i++;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: color,
                              ),
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed("active_circle_page45");
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
                          Navigator.of(context)
                              .pushReplacementNamed("active_circle_page45");
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
                          "Save 5 EGP when you join a circle",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Description",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: greyColor,
                            fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: greyColor),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "More Details",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: greyColor,
                            fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50.withOpacity(0.5),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Text(
                                    "Country",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "Egypt",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Text(
                                    "Weight",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "1 kg",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 11,
                                  child: Text(
                                    "Family",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "Solanaceae",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Text(
                                    "Calories",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "22 - 30",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Want to create your own circle?",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("create_circle_page");
                        },
                        child: Center(
                          child: Text(
                            "Create New Circle",
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ));
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
                    child: Icon(Icons.cancel_outlined))
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
