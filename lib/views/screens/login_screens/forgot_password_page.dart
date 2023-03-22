// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../globals/globals.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('login_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: color,
          ),
        ),
        title: Text(
          "Forgot Password",
          style: GoogleFonts.montserrat(
              color: color, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Enter your phone number and we will\nsend you a verification code.",
                style: GoogleFonts.montserrat(color: greyColor, fontSize: 12),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Phone Number",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            IntlPhoneField(
              style: GoogleFonts.montserrat(
                  fontSize: 13, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 10, top: 3, bottom: 15),
                hintText: "Your Phone Number",
                hintStyle: GoogleFonts.montserrat(
                  color: greyColor,
                  fontSize: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("verify_account");
                setState(() {
                  isForgot = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                height: 45,
                margin: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Color(0xff001D70),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Submit",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
