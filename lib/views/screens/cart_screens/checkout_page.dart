// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            (joinGroup == false)
                ? Navigator.of(context)
                    .pushReplacementNamed("cart_details_page")
                : Navigator.of(context)
                    .pushReplacementNamed("create_circle_page");
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Checkout",
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: (joinGroup == false)
          ? SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 87,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff001D70).withOpacity(0.09),
                      ),
                      padding: EdgeInsets.all(19),
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
                                text: "44.00",
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
                              color: color.withOpacity(0.9),
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
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
                      textAlign: TextAlign.start,
                      "My Wallet",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wallet,
                            size: 35,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Text(
                                "Use balance from my wallet",
                                style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "120 EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          Switch(
                            value: value,
                            onChanged: (val) {
                              setState(() {
                                value = val;
                              });
                            },
                            activeColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            trackColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xff00F300),
                            ),
                            activeThumbImage: AssetImage(
                              "assets/images/done.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textAlign: TextAlign.start,
                      "Payment Methods",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('credit_card_page');
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 30,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Credit Card",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('cod_page');
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add_card,
                                size: 30, color: Color(0xff07CA0E)),
                            SizedBox(width: 5),
                            Text(
                              "Cash on Delivery",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.end,
                      "Added Items (2)",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
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
                        children: [
                          Text(
                            "x1",
                            style: GoogleFonts.montserrat(color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/tomato.png",
                            scale: 3,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Fresh Red Tomato \n- 1 kg - organic",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "15 EGP",
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
                        children: [
                          Text(
                            "x2",
                            style: GoogleFonts.montserrat(color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/carrot.png",
                            scale: 3,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Carrot - Fresh - 1 kg.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "34 EGP",
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
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff001D70).withOpacity(0.09),
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
                              color: color,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
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
                      textAlign: TextAlign.start,
                      "My Wallet",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wallet,
                            size: 35,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Text(
                                "Use balance from my wallet",
                                style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "8 EGP",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          Switch(
                            value: value,
                            onChanged: (val) {
                              setState(() {
                                value = val;
                              });
                            },
                            activeColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            trackColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xff00F300),
                            ),
                            activeThumbImage: AssetImage(
                              "assets/images/done.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textAlign: TextAlign.start,
                      "Payment Methods",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('credit_card_page');
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 30,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Credit Card",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('cod_page');
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add_card,
                                size: 30, color: Color(0xff07CA0E)),
                            SizedBox(width: 5),
                            Text(
                              "Cash on Delivery",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      textAlign: TextAlign.end,
                      "Added Items (1)",
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
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
                        children: [
                          Text(
                            "x2",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/tomato.png",
                            scale: 3,
                            // height: 350,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 4),
                              Text(
                                "Fresh Red Tomato\n- 1 kg - organic",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "15 EGP",
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