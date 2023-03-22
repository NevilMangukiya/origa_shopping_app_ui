// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class SuccessPage69 extends StatefulWidget {
  const SuccessPage69({Key? key}) : super(key: key);

  @override
  State<SuccessPage69> createState() => _SuccessPage69State();
}

class _SuccessPage69State extends State<SuccessPage69> {
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
              scale: 3,
            ),
            SizedBox(height: 0),
            Text(
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: color, fontSize: 14, fontWeight: FontWeight.bold),
              "You Changed Your Circle\nSuccessfully",
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 11),
              "It is a long established fact that a reader\nwill be distracted by the readable.",
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("circle_page2");
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
                "Open My Circle ",
                style: GoogleFonts.montserrat(
                    fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("menu_page");
              },
              // style: ElevatedButton.styleFrom(
              //   shadowColor: Colors.grey,
              //   backgroundColor: color,
              //   fixedSize: Size(350, 45),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: color,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Back To Home",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: color,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
