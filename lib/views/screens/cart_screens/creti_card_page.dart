// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            (joinGroup == false)
                ? Navigator.of(context).pushReplacementNamed('checkout_page')
                : Navigator.of(context).pushReplacementNamed('checkout_page');
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Credit Card",
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: (joinGroup == false)
          ? Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 87,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color.withOpacity(0.05),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Total Amount",
                          style: GoogleFonts.montserrat(
                              color: color.withOpacity(0.8), fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text.rich(
                          TextSpan(
                              text: "44",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  letterSpacing: 0.7,
                                  color: color),
                              children: [
                                TextSpan(
                                  text: " EGP",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      letterSpacing: 0.7,
                                      color: color),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Enter Your Card Info",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Card Number",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 11),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.info,
                        size: 18,
                        color: greyColor,
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 20),
                      hintText: "xxxx xxxx xxxx xxxx",
                      hintStyle: GoogleFonts.montserrat(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    flex: 12,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Expiry Date",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 11),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.info,
                                    color: greyColor,
                                    size: 18,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: 20, top: 20, right: 20),
                                  hintText: "MM / YY",
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey, fontSize: 13),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "CVV",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 11),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.info,
                                    color: greyColor,
                                    size: 18,
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 20, top: 20),
                                    hintText: "xxx",
                                    hintStyle: GoogleFonts.montserrat(
                                        color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed("transaction_page");
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: color,
                      fixedSize: Size(350, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Place Order",
                      style: GoogleFonts.montserrat(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(
                    flex: 25,
                  )
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 88,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color.withOpacity(0.1),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Total Amount",
                          style: GoogleFonts.montserrat(
                              color: color.withOpacity(0.8), fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text.rich(
                          TextSpan(
                              text: "15",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  letterSpacing: 0.7,
                                  color: color),
                              children: [
                                TextSpan(
                                  text: " EGP",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      letterSpacing: 0.7,
                                      color: color),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Enter Your Card Info",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Card Number ",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                      Icon(
                        Icons.info,
                        color: greyColor,
                        size: 18,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 20),
                      hintText: "xxxx xxxx xxxx xxxx",
                      hintStyle: GoogleFonts.montserrat(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Expiry Date ",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.info,
                                  color: greyColor,
                                  size: 18,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                hintText: "MM / YY",
                                hintStyle: GoogleFonts.montserrat(
                                    color: Colors.grey, fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "CVV ",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.info,
                                  color: greyColor,
                                  size: 18,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                hintText: "XXX",
                                hintStyle: GoogleFonts.montserrat(
                                    color: Colors.grey, fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed("transaction_page");
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: color,
                      fixedSize: Size(350, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Place Order",
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}