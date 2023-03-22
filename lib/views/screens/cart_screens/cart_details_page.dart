// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class CartDetailsPage extends StatefulWidget {
  const CartDetailsPage({Key? key}) : super(key: key);

  @override
  State<CartDetailsPage> createState() => _CartDetailsPageState();
}

class _CartDetailsPageState extends State<CartDetailsPage> {
  int i = 0;
  int i1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("cart_page");
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: color,
        elevation: 0,
        title: Text(
          "My Cart",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Do you have a coupon?",
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Enter coupon code..",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.blueGrey.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff6B738D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Summary",
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    Icons.info,
                    size: 15,
                    color: greyColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Delivery is free over 1000 EGP.",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
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
                            "49 EGP",
                            style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.5),
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
                    SizedBox(height: 5),
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
                            "-5 EGP",
                            style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 2),
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
                            "44 EGP",
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/tomato.png",
                      scale: 3,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 4),
                        Text(
                          "Fresh Red Tomato Egyptian\n- 1 kg - organic",
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "15 EGP",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.pink.shade50.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "❌ Remove",
                                style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.shade100),
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
                                fontWeight: FontWeight.bold,
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
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
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
                        )
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/carrot.png",
                      scale: 2,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 4),
                        Text(
                          "Carrot - Fresh - 1 kg.",
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "34 EGP",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.pink.shade50,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "❌ Remove",
                                style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 65),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (i1 == 1) {
                                    i1 = 1;
                                  } else {
                                    i1--;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.shade100),
                                child: Icon(
                                  Icons.remove,
                                  size: 18,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "$i1",
                              style: GoogleFonts.montserrat(
                                color: color,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  i1++;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
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
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Do you want to add more items?",
                  style: GoogleFonts.montserrat(color: greyColor, fontSize: 12),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  primary: Colors.white,
                  fixedSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Continue Shopping",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, color: color, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bottomBar() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 120,
      width: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 9,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Total Amount",
                style: GoogleFonts.montserrat(color: greyColor, fontSize: 13),
              ),
              Spacer(),
              Text(
                "44 EGP",
                style: GoogleFonts.montserrat(
                    color: color, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("checkout_page");
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.grey,
              primary: color,
              fixedSize: Size(450, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "Checkout",
              style: GoogleFonts.montserrat(
                  fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}