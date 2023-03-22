// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class InviteCommunitiesPage extends StatefulWidget {
  const InviteCommunitiesPage({Key? key}) : super(key: key);

  @override
  State<InviteCommunitiesPage> createState() => _InviteCommunitiesPageState();
}

class _InviteCommunitiesPageState extends State<InviteCommunitiesPage> {
  bool checkBox = false;
  bool checkBox5 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.black,
      //   title: Text(
      //     "Invite From Communities",
      //     style: GoogleFonts.montserrat(fontSize: 15),
      //   ),
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Invite From Communities",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "10 People are selected",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 23, right: 23),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search for a someone...",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 11,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 22,
                        ),
                        isDense: true,
                        filled: true,
                        fillColor: Colors.grey.shade200.withOpacity(0.5),
                        contentPadding:
                            EdgeInsets.only(left: 10, right: 20, top: 24),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                ],
              ),
            ),
            Expanded(
              flex: 17,
              child: ListView(
                children: [
                  ExpansionPanelList.radio(
                    children: [
                      ExpansionPanelRadio(
                        backgroundColor: Colors.grey.shade50.withOpacity(0.8),
                        body: Container(
                          color: Colors.white,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p1.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Ahmed Emad",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox = val!;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p2.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Fahd abdul",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox2,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox2 = val!;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p1.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Ahmed Emad",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox3,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox3 = val!;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p3.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "ABdle Rehman",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox4,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox4 = val!;
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                        value: 0,
                        canTapOnHeader: true,
                        headerBuilder: (context, bool isExpanded) => ListTile(
                          title: Text(
                            "The Office Community",
                            style: GoogleFonts.montserrat(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "4 are Selected",
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                    dividerColor: Colors.grey,
                  ),
                  SizedBox(height: 5),
                  ExpansionPanelList.radio(
                    children: [
                      ExpansionPanelRadio(
                        backgroundColor: Colors.grey.shade50.withOpacity(0.8),
                        body: Container(
                          color: Colors.white,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p1.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Ahmed Emad",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox = val!;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p2.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Fahd abdul",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox2,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox2 = val!;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p1.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Ahmed Emad",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox3,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox3 = val!;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/person/p3.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "ABdle Rehman",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      checkColor: Colors.white,
                                      activeColor: color,
                                      value: checkBox4,
                                      onChanged: (val) {
                                        setState(() {
                                          checkBox4 = val!;
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                        value: 0,
                        canTapOnHeader: true,
                        headerBuilder: (context, bool isExpanded) => ListTile(
                          // selectedColor: Colors.grey,
                          // hoverColor: Colors.grey,
                          title: Text(
                            "Friends Community",
                            style: GoogleFonts.montserrat(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "4 are Selected",
                            style: GoogleFonts.montserrat(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                    dividerColor: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.all(10),
          height: 70,
          width: _width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -5),
                blurRadius: 3,
                color: Colors.grey.withOpacity(0.5),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 40),
                  primary: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("family_group_page");
                },
                child: Text(
                  "Invite People",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
    );
  }
}
