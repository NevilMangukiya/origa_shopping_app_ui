// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../globals/globals.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  int of = 0;
  String name = "";
  Uint8List? image;
  Uint8List? decodedImage;
  String encodedImage = "";
  String books = "";
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: color,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("settings_page");
            },
            child: Icon(Icons.settings),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 100,
                width: 110,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    // df
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
                                title: Text("Choose"),
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
            SizedBox(height: 10),
            Form(
              key: globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Edit Profile Picture",
                      style: GoogleFonts.montserrat(
                        color: greyColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Full Name",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Colors.grey.shade600),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                EdgeInsets.only(left: 20, top: 4, bottom: 15),
                            hintText: "First Name",
                            hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                EdgeInsets.only(left: 20, top: 4, bottom: 15),
                            hintText: "Last Name",
                            hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Email Address",
                    style: GoogleFonts.montserrat(
                        color: greyColor, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) => !EmailValidator.validate(val!)
                        ? "Enter valid Email"
                        : null,
                    controller: emailController,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.only(left: 10, top: 0, bottom: 18),
                      hintText: "Kareem@gmail.com",
                      hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Date Of Birth",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 10, top: 0, bottom: 18),
                hintText: "12 / 05 / 1981",
                hintStyle: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Gender",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       padding: EdgeInsets.all(10),
            //       alignment: Alignment.centerLeft,
            //       height: 40,
            //       width: 140,
            //       decoration: BoxDecoration(
            //         color: Colors.red.shade100,
            //         borderRadius: BorderRadius.circular(30),
            //         border: Border.all(color: Colors.red, width: 2),
            //       ),
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.person,
            //             size: 20,
            //             color: Colors.red,
            //           ),
            //           Text(
            //             "Male",
            //             style: GoogleFonts.montserrat(color: Colors.red),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(width: 10),
            //     Container(
            //       padding: EdgeInsets.all(10),
            //       alignment: Alignment.centerLeft,
            //       height: 40,
            //       width: 140,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30),
            //         border: Border.all(
            //           color: Colors.grey,
            //         ),
            //       ),
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.person,
            //             size: 20,
            //           ),
            //           Text(
            //             "Female",
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Spacer(),
            InkWell(
              onTap: () {
                if (globalKey.currentState!.validate()) {
                  Navigator.of(context).pushNamed("menu_page");
                }
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
                  "Save Updates",
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