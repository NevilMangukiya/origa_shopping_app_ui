// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  TextStyle myStyle = GoogleFonts.montserrat(
      fontSize: 11, color: greyColor, fontWeight: FontWeight.bold);

  RangeValues _currentRangeValues = const RangeValues(20, 150);

  // SingingCharacter? _character = SingingCharacter.lafayette;

  GlobalKey key = GlobalKey();

  dynamic val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: Image.asset(
            "assets/images/filter.png",
            scale: 1.3,
          ),
          title: Text(
            "Filter",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 16),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset(
                "assets/images/close.png",
                scale: 1.3,
              ),
            )
          ],
        ),
        bottomNavigationBar: bottom(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Category",
                  style: myStyle,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    elevation: 0,
                    primary: Colors.blue.shade50.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    showCategoryModalSheet();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Electronics",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Sub-category",
                  style: myStyle,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    elevation: 0,
                    primary: Colors.blue.shade50.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mobiles",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Brand",
                  style: myStyle,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    elevation: 0,
                    primary: Colors.blue.shade50.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All Brands (12)",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Price Range",
                  style: myStyle,
                ),
                RangeSlider(
                  key: key,
                  min: 1,
                  max: 200,
                  activeColor: color,
                  inactiveColor: Colors.grey,
                  values: _currentRangeValues,
                  onChanged: (val) {
                    setState(() {
                      _currentRangeValues = val;
                    });
                  },
                ),
                Row(
                  children: [
                    Text(
                      "${_currentRangeValues.start.toInt()}",
                      style: GoogleFonts.montserrat(
                        color: color,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "EGP",
                      style: GoogleFonts.montserrat(
                        color: color,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "${_currentRangeValues.end.toInt()}",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "EGP",
                      style: GoogleFonts.montserrat(
                        color: color,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Sort By",
                  style: myStyle,
                ),
                SizedBox(height: 10),
                RadioListTile(
                  value: 1,
                  title: Text(
                    "Featured",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  groupValue: val,
                  onChanged: (val1) {
                    setState(() {
                      val = val1;
                    });
                  },
                ),
                RadioListTile(
                  value: 2,
                  title: Text(
                    "Alphabetically,A-Z",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  groupValue: val,
                  onChanged: (val1) {
                    setState(() {
                      val = val1;
                    });
                  },
                ),
                RadioListTile(
                  value: 3,
                  title: Text(
                    "Price,low to high",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  groupValue: val,
                  onChanged: (val1) {
                    setState(() {
                      val = val1;
                    });
                  },
                ),
                RadioListTile(
                  value: 4,
                  title: Text(
                    "Price,high to low",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  groupValue: val,
                  onChanged: (val1) {
                    setState(() {
                      val = val1;
                    });
                  },
                ),
                RadioListTile(
                  value: 5,
                  title: Text(
                    "Best selling",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  groupValue: val,
                  onChanged: (val1) {
                    setState(() {
                      val = val1;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }

  bottom() {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey,
            offset: Offset(1, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade50.withOpacity(0.9),
              fixedSize: Size(100, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "Reset",
              style: GoogleFonts.montserrat(
                  fontSize: 13, color: greyColor, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.grey,
                primary: color,
                fixedSize: Size(190, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    "Show Results",
                    style: GoogleFonts.montserrat(fontSize: 13),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  )
                ],
              )),
        ],
      ),
    );
  }

  showCategoryModalSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setter) {
          return Container(
            height: 472,
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Category",
                      style: GoogleFonts.montserrat(
                          color: greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        "assets/images/close.png",
                        color: Colors.grey,
                        scale: 1.5,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 1.5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 1,
                        // title: Text("Featured"),
                        groupValue: val,
                        onChanged: (val1) {
                          setter(() {
                            val = val1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: Text(
                          "All Categories",
                          style: GoogleFonts.montserrat(
                              color: color, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 2,
                        // title: Text("Featured"),
                        groupValue: val,
                        onChanged: (val1) {
                          setter(() {
                            val = val1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Home Appliances",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 3,
                        // title: Text("Featured"),
                        groupValue: val,
                        onChanged: (val1) {
                          setter(() {
                            val = val1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Electronics",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 4,
                        // title: Text("Featured"),
                        groupValue: val,
                        onChanged: (val1) {
                          setter(() {
                            val = val1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Households",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 5,
                        // title: Text("Featured"),
                        groupValue: val,
                        onChanged: (val1) {
                          setter(() {
                            val = val1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Fashion",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 6,
                        // title: Text("Featured"),
                        groupValue: val,
                        onChanged: (val1) {
                          setter(() {
                            val = val1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Medical",
                        style: GoogleFonts.montserrat(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    primary: color,
                    fixedSize: Size(450, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Apply Category",
                    style: GoogleFonts.montserrat(fontSize: 13),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
