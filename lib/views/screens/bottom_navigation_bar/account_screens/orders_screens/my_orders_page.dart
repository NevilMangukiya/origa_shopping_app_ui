// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../globals/globals.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: color,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("menu_page");
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text(
            "My Orders",
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            // isScrollable: true,

            // labelPadding: EdgeInsets.all(0.5),
            // automaticIndicatorColorAdj/ustment: true,
            indicatorWeight: 3,
            // padding: EdgeInsets.all(10),
            // indicator: ShapeDecoration(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     color: Colors.red),

            // indicatorPadding:
            //     EdgeInsets.only(left: 10, right: 50, top: 50, bottom: 50),
            //
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.vertical(
            //       top: Radius.circular(20),
            //     ),
            //     color: Colors.pink),
            indicatorColor: Colors.grey,
            labelColor: Colors.black,
            tabs: [
              Text("Upcoming"),
              Text("History"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('orders_details_page');
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "There is 3 Orders",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400.withOpacity(0.4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order ID: SZX124",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Sat, 15/05/2022 at 03:45 Am",
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "15,400",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  "On Delivery",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8, color: Colors.blueGrey),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400.withOpacity(0.4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order ID: SZX124",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Sat, 15/05/2022 at 03:45 Am",
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "15,400",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  "On Delivery",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8, color: Colors.blueGrey),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400.withOpacity(0.4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order ID: SZX124",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sat, 15/05/2022 at 03:45 Am",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "15,400",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  "On Delivery",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8, color: Colors.blueGrey),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('orders_details_page');
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "There is 3 Orders",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300.withOpacity(0.4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order ID: SZX124",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Sat, 15/05/2022 at 03:45 Am",
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "15,400",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xff00F300).withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  "On Delivery",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 8,
                                    color: Color(0xff00F300),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order ID: SZX124",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Sat, 15/05/2022 at 03:45 Am",
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "15,400",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red.shade100,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  "Canceled",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8, color: Colors.red),
                                ),
                              )
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
    );
  }
}
