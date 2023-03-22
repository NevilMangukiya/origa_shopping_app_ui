// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/40(grocery_page).dart';

import '../../../../globals/globals.dart';

class GroceryCategoryPage extends StatefulWidget {
  const GroceryCategoryPage({Key? key}) : super(key: key);

  @override
  State<GroceryCategoryPage> createState() => _GroceryCategoryPageState();
}

class _GroceryCategoryPageState extends State<GroceryCategoryPage> {
  bool isLike = false;
  bool isLike2 = false;
  bool isLike3 = false;
  bool isLike4 = false;
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    dynamic _height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Color(0xff242C46),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("category_details_page");
              },
              child: Icon(Icons.arrow_back),
            ),
            elevation: 0,
            title: Text(
              "Grocery Category",
              style: GoogleFonts.montserrat(
                color: Color(0xff242C46),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('filter_page');
                },
                child: Image.asset(
                  "assets/images/filter.png",
                  scale: 1.5,
                  color: color,
                ),
              ),
// SizedBox(width: 5),
            ],
            bottom: TabBar(
              automaticIndicatorColorAdjustment: true,
              indicatorPadding: EdgeInsets.only(left: 10, right: 10),
              // decoration: BoxDecoration(
              //   color: greyColor,
              //   borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              // ),
              indicatorColor: Colors.red,

              indicator: BubbleTabIndicator(
                indicatorColor: greyColor,
                indicatorHeight: 25,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,

              tabs: [
                Tab(
                  // height: 24,

                  child: Text(
                    "All Items",
                    style: GoogleFonts.montserrat(
                        fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Grocery",
                    style: GoogleFonts.montserrat(
                        fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Fruites",
                    style: GoogleFonts.montserrat(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Dairy",
                    style: GoogleFonts.montserrat(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    prefixIconColor: Colors.grey,
                    isDense: true,
                    contentPadding:
                        EdgeInsets.only(left: 10, right: 0, bottom: 25),
                    hintText: "What do you want?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
// gapPadding: 25,
                    ),
                  ),
// cursorHeight: 1,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Grocery40(),
                    Text("SDF"),
                    Text("SDF"),
                    Text("SDF"),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

// Column(
// children: [
// ButtonsTabBar(
// tabs: [
// Text("All Items"),
// Text("All Items"),
// Text("All Items"),
// Text("All Items"),
// ],
// ),
// Expanded(
// child: TabBarView(
// children: [
// Text("All Items"),
// Text("All Items"),
// Text("All Items"),
// Text("All Items"),
// ],
// ),
// ),
// ],
// ),
//
