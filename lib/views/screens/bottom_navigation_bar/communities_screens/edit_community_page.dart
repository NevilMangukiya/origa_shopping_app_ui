// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../globals/globals.dart';

class EditCommunityPage extends StatefulWidget {
  const EditCommunityPage({Key? key}) : super(key: key);

  @override
  State<EditCommunityPage> createState() => _EditCommunityPageState();
}

class _EditCommunityPageState extends State<EditCommunityPage> {
  int of = 0;
  String name = "";
  Uint8List? image;
  Uint8List? decodedImage;
  String encodedImage = "";
  String books = "";
  dynamic value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Edit Community",
          style: GoogleFonts.montserrat(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 100,
                width: 110,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      child: Center(
                        child: image == null
                            ? Icon(
                                Icons.people,
                                color: greyColor,
                                size: 50,
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

                    // CircleAvatar(
                    //   backgroundColor: Colors.grey.shade300,
                    //   // ignore: sort_child_properties_last
                    //   child: Icon(
                    //     Icons.people,
                    //     color: greyColor,
                    //     size: 50,
                    //   ),
                    //   radius: 50,
                    // ),
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
                                            encodedImage = base64Encode(image!);
                                          }
                                          setState(() {});
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Camera"),
                                      ),
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
            Center(
              child: Text(
                "Edit Group Picture",
                style: GoogleFonts.montserrat(
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Community Name",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontWeight: FontWeight.bold, fontSize: 11),
            ),
            SizedBox(height: 10),
            TextFormField(
              maxLength: 15,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 20),
                isDense: true,
                hintText: "Enter New Community name",
                hintStyle:
                    GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            // SizedBox(height: 20),
            Text(
              "Description",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontWeight: FontWeight.bold, fontSize: 12),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: TextFormField(
                maxLength: 1000,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 20, top: 10, bottom: 80, right: 10),
                  isDense: true,
                  hintMaxLines: 3,
                  hintText:
                      "It is a long established fact that reader will \nbe distracted the readable content of a\npage when looking at its layout.",
                  hintStyle: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 12,
                    // fontWeight: FontWeight.w500
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.topLeft,
            //   padding: EdgeInsets.only(left: 20, top: 10),
            //   height: 90,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: greyColor),
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: Text(
            //     "It is a long established fact that reader will be distracted the readable content of a page when looking at its layout.",
            //     style: GoogleFonts.montserrat(
            //       color: Colors.black,
            //       fontSize: 12,
            //     ),
            //   ),
            // ),
            SizedBox(height: 5),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Text(
            //     "1000/1000",
            //     style: GoogleFonts.montserrat(color: greyColor, fontSize: 10),
            //   ),
            // ),
            SizedBox(height: 10),
            Text(
              "Community Type",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontWeight: FontWeight.bold, fontSize: 12),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      value = val!;
                    });
                  },
                ),
                Text(
                  "Public",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(width: 50),
                Radio(
                  value: 1,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      value = val!;
                    });
                  },
                ),
                Text(
                  "Private",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 45),
                elevation: 2,
                primary: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("family_group_page");
              },
              child: Text(
                "Save Updates",
                style: GoogleFonts.montserrat(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 45),
                elevation: 0,
                primary: Colors.red.shade50.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                showDeleteDialog();
              },
              child: Text(
                "Delete This Community",
                style: GoogleFonts.montserrat(
                    color: Color(0xffFF265E),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDeleteDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Container(
          alignment: Alignment.center,
          height: 153,
          width: 450,
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                "Are you sure you want to\ndelete this community?",
                style: GoogleFonts.montserrat(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "It is a long established fact that a reader will be distracted by the readable.",
                style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: greyColor),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.grey.shade200,
                        onPrimary: greyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fixedSize: Size(110, 35)),
                    child: Text("Cancel"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.pink,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fixedSize: Size(110, 35)),
                    child: Text(
                      "Delete",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  // AlertDialog(
  // title: Text(
  // "Are You sure you want to\ndelete this community?",
  // style: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
  // ),
  // ),
}
