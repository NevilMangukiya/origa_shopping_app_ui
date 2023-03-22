// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: color,
          elevation: 0,
          title: Text(
            "My Cart",
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('menu_page');
            },
            child: Icon(Icons.arrow_back),
          ),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed("cart_details_page");
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                  size: 90,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Cart is Empty Now!",
                style: GoogleFonts.montserrat(
                    color: color,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3),
              ),
              SizedBox(height: 10),
              Text(
                "No items are added yet in your cart.",
                style: GoogleFonts.montserrat(
                    color: Colors.grey, fontSize: 12, letterSpacing: 0.3),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed("cart_details_page");
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  primary: color,
                  fixedSize: Size(190, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Start Shopping",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}