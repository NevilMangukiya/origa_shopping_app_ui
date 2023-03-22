// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../globals/globals.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<bool> isSelected = [
    true,
    false,
  ];

  int of = 0;
  String name = "";
  Uint8List? image;
  Uint8List? decodedImage;
  String encodedImage = "";
  String books = "";

  Future pickImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("verify_account");
          },
          child: Icon(
            Icons.arrow_back,
            color: color,
          ),
        ),
        title: Text(
          "Complete Your Profile",
          style: GoogleFonts.montserrat(
              color: color, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Please enter your personal info\nto complete your profile",
                style: GoogleFonts.montserrat(color: greyColor, fontSize: 12),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 100,
                width: 110,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      child: Center(
                        child: image == null
                            ? const Text(
                                "ADD IMAGE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              )
                            : Container(
                                height: 250,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.memory(
                                    image!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                      ),
                    ),

                    // Icon(Icons.edit),

                    Positioned(
                        right: 1,
                        left: 80,
                        top: 55,
                        // child: FloatingActionButton(
                        child: InkWell(
                          onTap: () async {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  "Choose Option",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          onPressed: () async {
                                            final ImagePicker picker =
                                                ImagePicker();

                                            XFile? img = await picker.pickImage(
                                                source: ImageSource.camera);

                                            if (img != null) {
                                              File compressedImage =
                                                  await FlutterNativeImage
                                                      .compressImage(img.path);
                                              image = (await compressedImage
                                                  .readAsBytes());
                                              encodedImage =
                                                  base64Encode(image!);
                                            }
                                            setState(() {});
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Camera")),
                                      ElevatedButton(
                                          onPressed: () async {
                                            final ImagePicker picker =
                                                ImagePicker();

                                            XFile? img = await picker.pickImage(
                                                source: ImageSource.gallery);

                                            if (img != null) {
                                              File compressedImage =
                                                  await FlutterNativeImage
                                                      .compressImage(img.path);
                                              image = (await compressedImage
                                                  .readAsBytes());
                                              encodedImage =
                                                  base64Encode(image!);
                                            }
                                            setState(() {});
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Gallery")),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.pink,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                        // onPressed: () {},
                        // ),
                        ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Date Of Birth",
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 20, top: 20),
                hintText: "12/05/1991",
                hintStyle: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Gender",
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            CustomRadioButton(
              buttonLables: ['👤 Male', '👤 Female'],
              buttonValues: ["Male", "Female"],
              radioButtonValue: (value) {},
              height: 40,
              width: 140,
              enableShape: true,
              elevation: 0,
              margin: EdgeInsets.only(left: 10, top: 10, right: 18),
              selectedBorderColor: Colors.white,
              unSelectedBorderColor: Colors.grey,
              buttonTextStyle: ButtonTextStyle(),
              unSelectedColor: Colors.white,
              selectedColor: Colors.red,
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("menu_page");
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
                  "Let's Start",
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