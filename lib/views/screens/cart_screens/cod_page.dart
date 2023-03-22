// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class CODPage extends StatefulWidget {
  const CODPage({Key? key}) : super(key: key);

  @override
  State<CODPage> createState() => _CODPageState();
}

class _CODPageState extends State<CODPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Cash on Delivery",
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
                    height: 95,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color.withOpacity(0.08),
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
                    "Cash on Delivery Option",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Please note there is a non-refundable fee of\n"
                    "10.00 EGP for our cash on delivery service.",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "To save on this amount,please proceed with\n"
                    "debit/credit card.",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 12),
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
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
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
                    "Cash on Delivery Option",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Please note there is a non-refundable fee of\n"
                    "10.00 EGP for our cash on delivery service.",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "To save on this amount,please proceed with\n"
                    "debit/credit card.",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 12),
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
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}