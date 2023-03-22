// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../globals/globals.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  int done = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: color,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("my_orders_page");
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Orders Details",
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: (done == 0)
          ? SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Status",
                      style: GoogleFonts.montserrat(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Expected to be delivered on Sat, 15/05/2022",
                      style: GoogleFonts.montserrat(
                          fontSize: 10, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff00F300),
                          child: Icon(
                            Icons.done,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                            height: 2, width: 40, color: Color(0xff00F300)),
                        SizedBox(width: 0),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff00F300).withOpacity(0.5),
                          child: Text(
                            "2",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 0),
                        Container(
                            height: 2, width: 40, color: Colors.grey.shade300),
                        SizedBox(width: 0),
                        InkWell(
                          onTap: () {
                            setState(() {
                              done = 1;
                            });
                          },
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey.shade300,
                            child: Text(
                              "3",
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(width: 0),
                        Container(
                            height: 2, width: 40, color: Colors.grey.shade300),
                        SizedBox(width: 0),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey.shade300,
                          child: Text(
                            "4",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "Confirmed",
                          style: GoogleFonts.montserrat(
                              fontSize: 9, color: Colors.grey),
                        ),
                        SizedBox(width: 40),
                        Text(
                          "Processing",
                          style: GoogleFonts.montserrat(
                              fontSize: 9, color: Colors.grey),
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Out For Delivery",
                          style: GoogleFonts.montserrat(
                              fontSize: 9, color: Colors.grey),
                        ),
                        SizedBox(width: 13),
                        Text(
                          "Delivered",
                          style: GoogleFonts.montserrat(
                              fontSize: 9, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Order Summary",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: greyColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                                  "Sub total",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "15,400 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11,
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Text(
                                  "Delivery",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "20 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11,
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Text(
                                  "Coupon Discount",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "-50 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Text(
                                  "Total Amount",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "15,400 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Delivery Address",
                          style: GoogleFonts.montserrat(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Edit",
                          style: GoogleFonts.montserrat(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 20,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Text(
                                "My Home",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Egypt,New Cairo, Tahrir Square,street 10,\n12 Building.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textAlign: TextAlign.end,
                      "Added Items (2)",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "x2",
                            style: GoogleFonts.montserrat(color: Colors.black),
                          ),
                          SizedBox(width: 3),
                          Image.asset(
                            "assets/images/13pro.png",
                            scale: 2,
                            height: 350,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 50,
                                // ignore: sort_child_properties_last
                                child: Text(
                                  "Circle",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "iPhone 13 Pro Max Grey\nColor - 8 R...",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "15,400 EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "x1",
                            style: GoogleFonts.montserrat(color: Colors.black),
                          ),
                          SizedBox(width: 3),
                          Image.asset(
                            "assets/images/13.png",
                            scale: 2,
                            height: 350,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 50,
                                // ignore: sort_child_properties_last
                                child: Text(
                                  "Circle",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "iPhone 13 Pink\nColor - 8 R...",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "15,400 EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
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
          : SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order ID: SZX1254",
                      style: GoogleFonts.montserrat(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Delivered on Sat, 15/05/2022 at 03:45 AM",
                      style: GoogleFonts.montserrat(
                          fontSize: 10, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff00F300),
                          child: Icon(
                            Icons.done,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                            height: 2, width: 40, color: Color(0xff00F300)),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff00F300).withOpacity(0.5),
                          child: Icon(
                            Icons.done,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                            height: 2, width: 40, color: Color(0xff00F300)),
                        SizedBox(width: 3),
                        InkWell(
                          onTap: () {
                            // setState(() {
                            //   done = 1;
                            // });
                          },
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xff00F300),
                            child: Icon(
                              Icons.done,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                            height: 2, width: 40, color: Color(0xff00F300)),
                        SizedBox(width: 3),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff00F300),
                          child: Icon(
                            Icons.done,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(width: 5),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "Confirmed",
                          style: GoogleFonts.montserrat(
                              fontSize: 10, color: Colors.grey),
                        ),
                        SizedBox(width: 25),
                        Text(
                          "Processing",
                          style: GoogleFonts.montserrat(
                              fontSize: 10, color: Colors.grey),
                        ),
                        SizedBox(width: 19),
                        Text(
                          "Out For Delivery",
                          style: GoogleFonts.montserrat(
                              fontSize: 10, color: Colors.grey),
                        ),
                        SizedBox(width: 13),
                        Text(
                          "Delivered",
                          style: GoogleFonts.montserrat(
                              fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Order Summary",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade50.withOpacity(0.5),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 11,
                                child: Text(
                                  "Sub total",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: greyColor),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "15,400 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Text(
                                  "Delivery",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: greyColor),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "20 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Text(
                                  "Coupon Discount",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: greyColor),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "-50 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 11,
                                child: Text(
                                  "Total Amount",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: greyColor),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  "15,400 EGP",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Delivery Address",
                          style: GoogleFonts.montserrat(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 20,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Text(
                                "My Home",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Egypt,New Cairo, Tahrir Square,street 10,\n12 Building.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textAlign: TextAlign.end,
                      "Added Items (2)",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "x2",
                            style: GoogleFonts.montserrat(color: Colors.black),
                          ),
                          SizedBox(width: 3),
                          Image.asset(
                            "assets/images/13pro.png",
                            scale: 2,
                            height: 350,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 50,
                                // ignore: sort_child_properties_last
                                child: Text(
                                  "Circle",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "iPhone 13 Pro Max Grey\nColor - 8 R...",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "15,400 EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "x1",
                            style: GoogleFonts.montserrat(color: Colors.black),
                          ),
                          SizedBox(width: 3),
                          Image.asset(
                            "assets/images/13.png",
                            scale: 2,
                            height: 350,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 50,
                                // ignore: sort_child_properties_last
                                child: Text(
                                  "Circle",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "iPhone 13 Pink\nColor - 8 R...",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "15,400 EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
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
    );
  }
}
