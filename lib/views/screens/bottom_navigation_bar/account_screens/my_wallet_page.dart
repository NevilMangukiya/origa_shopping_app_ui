// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Wallet",
          style:
              GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.info),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // alignment: Alignment.center,
            children: [
              SizedBox(height: 10),
              Positioned(
                child: Container(
                  height: 50,
                  width: width,
                  color: color,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffFF265E),
                          Color(0xff001D70),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/coin.png",
                            scale: 1.2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 18),
                              Text(
                                "260",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18),
                              ),
                              Text(
                                "Origa Coins",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20),
                          margin: EdgeInsets.only(left: 20, top: 20),
                          height: 40,
                          width: 170,
                          decoration: BoxDecoration(
                            color: color.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "1",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Bonanza\nCoin",
                                style: GoogleFonts.montserrat(
                                    fontSize: 7, color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "=",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "50",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Bonanza\nCoin",
                                style: GoogleFonts.montserrat(
                                    fontSize: 7, color: Colors.white),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Earnings History",
              style: GoogleFonts.montserrat(color: greyColor),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "50",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  "Bonanza Coins",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "12/05/2022",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "The rest of the account.",
              style: GoogleFonts.montserrat(
                  fontSize: 12, color: greyColor, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            child: Row(
              children: [
                Text(
                  "8",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  "Bonanza Coins",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "12/05/2022",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "The rest of the account from (iPhone 13)\nin this circle.",
              style: GoogleFonts.montserrat(
                  fontSize: 12, color: greyColor, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            child: Row(
              children: [
                Text(
                  "13",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  "Bonanza Coins",
                  style: GoogleFonts.montserrat(
                      color: color, fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "12/05/2022",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "The rest of the account from (iPhone 13)\nin this circle.",
              style: GoogleFonts.montserrat(
                  fontSize: 12, color: greyColor, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
