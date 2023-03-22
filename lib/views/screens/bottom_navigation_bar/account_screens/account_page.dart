// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  dynamic val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Account",
              style: GoogleFonts.montserrat(
                color: color,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 0,
          leadingWidth: 90,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("notification_page");
              },
              child: Icon(
                CupertinoIcons.bell_solid,
                color: color,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("cart_page");
              },
              child: Icon(
                Icons.shopping_cart,
                color: color,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // SizedBox(width: 15),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person/p3.jpg"),
                  ),
                  SizedBox(width: 15),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "+20 105 138 4692",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 11),
                        ),
                      ],
                      text: "Kareem Ahmed\n",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, color: color),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(),
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPrimary: color,
                        primary: Colors.grey.shade200),
                    onPressed: () {
                      Navigator.of(context).pushNamed("edit_profile_page");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          size: 20,
                          color: color,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Edit My Profile",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(width: 5),
                    ...account
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(e.routes);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          offset: Offset(
                                              0, 3), // spreadRadius: 0.1,
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle),
                                  child: e.icon,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  e.name,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: greyColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    // SizedBox(width: 5),
                  ],
                ),
              ),
              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(width: 0.1),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("wallet_page");
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(0, 3), // spreadRadius: 0.1,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.wallet,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "My Wallet",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: greyColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("settings_page");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(0, 3), // spreadRadius: 0.1,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.settings,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Settings",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: greyColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            context: context,
                            builder: (context) => StatefulBuilder(
                                  builder: (context, setter) => Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30))),
                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 30,
                                        right: 20,
                                        bottom: 20),
                                    height: 270,
                                    width: 350,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Select Language",
                                          style: GoogleFonts.montserrat(
                                              color: color,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Choose your language to continue.",
                                          style: GoogleFonts.montserrat(
                                              color: greyColor, fontSize: 11),
                                          textAlign: TextAlign.center,
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Radio(
                                              value: 1,
                                              // title: Text("Featured"),
                                              groupValue: val,
                                              onChanged: (val1) {
                                                setter(() {
                                                  val = val1;
                                                });
                                              },
                                            ),
                                            Text(
                                              "English",
                                              style: GoogleFonts.montserrat(
                                                  color: greyColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Radio(
                                              value: 2,
                                              // title: Text("Featured"),
                                              groupValue: val,
                                              onChanged: (val1) {
                                                setter(() {
                                                  val = val1;
                                                });
                                              },
                                            ),
                                            Text(
                                              "Arabic",
                                              style: GoogleFonts.montserrat(
                                                  color: greyColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(0, 3), // spreadRadius: 0.1,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.language,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Language",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: greyColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(width: 5),
                  ],
                ),
              ),
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     // SizedBox(width: 15),
              //     InkWell(
              //       onTap: () {
              //         Navigator.of(context).pushReplacementNamed("wallet_page");
              //       },
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 50,
              //             width: 50,
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 boxShadow: [
              //                   BoxShadow(
              //                     blurRadius: 10,
              //                     offset: Offset(0, 3), // spreadRadius: 0.1,
              //                     color: Colors.black.withOpacity(0.1),
              //                   ),
              //                 ],
              //                 shape: BoxShape.circle),
              //             child: Icon(
              //               Icons.wallet,
              //               color: Colors.pink,
              //             ),
              //           ),
              //           SizedBox(height: 5),
              //           Text(
              //             "My Circles",
              //             style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
              //           ),
              //         ],
              //       ),
              //     ),
              //     // SizedBox(width: 15),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.of(context).pushReplacementNamed("settings_page");
              //       },
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 50,
              //             width: 50,
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 boxShadow: [
              //                   BoxShadow(
              //                     blurRadius: 10,
              //                     offset: Offset(0, 3), // spreadRadius: 0.1,
              //                     color: Colors.black.withOpacity(0.1),
              //                   ),
              //                 ],
              //                 shape: BoxShape.circle),
              //             child: Icon(
              //               Icons.settings,
              //               color: Colors.pink,
              //             ),
              //           ),
              //           SizedBox(height: 5),
              //           Text(
              //             "My Orders",
              //             style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
              //           ),
              //         ],
              //       ),
              //     ),
              //     // SizedBox(width: 15),
              //     GestureDetector(
              //       onTap: () {
              //         showLanguageModalSheet();
              //       },
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 50,
              //             width: 50,
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 boxShadow: [
              //                   BoxShadow(
              //                     blurRadius: 10,
              //                     offset: Offset(0, 3), // spreadRadius: 0.1,
              //                     color: Colors.black.withOpacity(0.1),
              //                   ),
              //                 ],
              //                 shape: BoxShape.circle),
              //             child: Icon(
              //               Icons.language,
              //               color: Colors.pink,
              //             ),
              //           ),
              //           SizedBox(height: 5),
              //           Text(
              //             "My Address",
              //             style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(width: 5),
                    // SizedBox(width: 1),

                    ...account3
                        .map(
                          (e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        offset:
                                            Offset(0, 3), // spreadRadius: 0.1,
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                    ],
                                    shape: BoxShape.circle),
                                child: e.icon,
                              ),
                              SizedBox(height: 5),
                              Text(
                                e.name,
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                    // SizedBox(width: 1),
                    // SizedBox(width: 1),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  showModalSheet();
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Colors.red.shade100.withOpacity(0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.exit_to_app_sharp,
                      size: 18,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Sign Out",
                      style: GoogleFonts.montserrat(
                          color: Colors.pink,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }

  showLanguageModalSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setter) => Container(
          height: 270,
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Language",
                style: GoogleFonts.montserrat(
                    color: color, fontSize: 16, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 5),
              Text(
                "Choose your language to continue.",
                style: GoogleFonts.montserrat(color: greyColor, fontSize: 11),
                textAlign: TextAlign.center,
              ),
              // SizedBox(height: 20),
              Column(
                children: [
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
                          flex: 9,
                          child: Text(
                            "English",
                            style: GoogleFonts.montserrat(
                                color: greyColor, fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ],
              ),
              // SizedBox(height: 20),
              Column(
                children: [
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
                          flex: 9,
                          child: Text(
                            "Arabic",
                            style: GoogleFonts.montserrat(
                                color: greyColor, fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ],
              ),

              // Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 10,
              //       backgroundColor: Colors.grey.shade200,
              //     ),
              //     SizedBox(width: 10),
              //     Text(
              //       "Arabic",
              //       style: GoogleFonts.montserrat(
              //           fontSize: 13, fontWeight: FontWeight.bold),
              //     )
              //   ],
              // ),
              Spacer(),
              Container(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: color,
                  ),
                  child: Text(
                    "Confirm Language",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showModalSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => Container(
        height: 300,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.shade100.withOpacity(0.5),
              ),
              child: Icon(
                Icons.exit_to_app,
                color: Colors.pink,
                size: 45,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Sign Out From Account",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Are you sure you want to sign out\nfrom your account?",
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 11),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    maximumSize: Size(250, 45),
                    fixedSize: Size(120, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Colors.grey.shade200,
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('login_choice_page');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(170, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Colors.pink,
                    ),
                    child: Text(
                      "Sign Out",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Account {
  final Icon? icon;
  final Image? image;
  final String name;
  final String routes;

  Account({
    this.icon,
    this.image,
    required this.name,
    required this.routes,
  });
}

List account = [
  Account(
      icon: Icon(
        Icons.circle_notifications,
        color: Colors.pink,
      ),
      image: Image.asset("assets/images/LeaveCircle.png"),
      name: "My Circles",
      routes: ""),
  Account(
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.pink,
      ),
      // image: Image.asset("assets/images/ca.png")*/
      name: "My Orders",
      routes: "my_orders_page"),
  Account(
      icon: Icon(
        Icons.location_pin,
        color: Colors.pink,
      ),
      // image: Image.asset("assets/images/LeaveCircle.png"),
      name: "My Address",
      routes: "address_page"),
];
List account2 = [
  Account(
      icon: Icon(
        Icons.wallet,
        color: Colors.pink,
      ),
      // image: Image.asset("assets/images/LeaveCircle.png"),
      name: "My Wallet",
      routes: "wallet_page"),
  Account(
    icon: Icon(
      Icons.settings,
      color: Colors.pink,
    ),
    name: "Settings",
    routes: "settings_page",
  ),
  Account(
      icon: Icon(
        Icons.language,
        color: Colors.pink,
      ),
      // image: Image.asset("assets/images/ca.png")*/
      name: "Language",
      routes: ""),
];
List account3 = [
  Account(
      icon: Icon(CupertinoIcons.info_circle_fill, color: Colors.pink),
      // image: Image.asset("assets/images/LeaveCircle.png"),
      name: "About Us",
      routes: ""),
  Account(
    icon: Icon(
      CupertinoIcons.question_circle_fill,
      color: Colors.pink,
    ),
    name: "FAQs",
    routes: "",
  ),
  Account(
      icon: Icon(
        CupertinoIcons.chat_bubble_fill,
        color: Colors.pink,
      ),
      // image: Image.asset("assets/images/ca.png")*/
      name: "Contact Us",
      routes: ""),
];
//
// SizedBox(height: 20),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: account2
//     .map(
// (e) => InkWell(
// onTap: () {
// Navigator.of(context).pushReplacementNamed(e.routes);
// },
// child: Column(
// children: [
// Container(
// height: 50,
// width: 50,
// decoration: BoxDecoration(
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// blurRadius: 10,
// offset:
// Offset(0, 3), // spreadRadius: 0.1,
// color: Colors.black.withOpacity(0.1),
// ),
// ],
// shape: BoxShape.circle),
// child: e.icon,
// ),
// SizedBox(height: 5),
// Text(
// e.name,
// style:
// GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
// ),
// ],
// ),
// ),
// )
// .toList(),
// ),
// SizedBox(height: 20),