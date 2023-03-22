// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/success.png",
              scale: 2,
            ),
            Text(
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: color, fontSize: 14, fontWeight: FontWeight.bold),
              "Your Transaction is paid\nSuccessfully",
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
              "It is a long established fact that a reader\nwill be distracted by the readable.",
            ),
            SizedBox(height: 30),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color.withOpacity(0.05),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info,
                    size: 23,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(
                      text: "Your Order will be delivered after\n",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: "48 hours of circle complete",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: color.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  joinGroup == false;
                });
                Navigator.of(context).pushReplacementNamed("menu_page");
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
                "Confirm ",
                style: GoogleFonts.montserrat(
                    fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed("orders_details_page");
              },
              child: Text(
                "View Order Details",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: color,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}