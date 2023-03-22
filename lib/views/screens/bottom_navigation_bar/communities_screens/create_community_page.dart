// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../globals/globals.dart';

class CreateCommunityPage extends StatefulWidget {
  const CreateCommunityPage({Key? key}) : super(key: key);

  @override
  State<CreateCommunityPage> createState() => _CreateCommunityPageState();
}

class _CreateCommunityPageState extends State<CreateCommunityPage> {
  int of = 0;
  String name = "";
  Uint8List? image;
  Uint8List? decodedImage;
  String encodedImage = "";
  String books = "";

  Object? value = 1;
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
          "Create a Community",
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
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Community Name",
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 20, top: 20),
                hintText: "Enter community name...",
                hintStyle: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(height: 10),
            TextFormField(
              maxLength: 1000,
              maxLines: 4,
              decoration: InputDecoration(
                isDense: true,
                // contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 80),
                hintText: "Enter community name...",
                hintStyle: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.topLeft,
            //   padding: EdgeInsets.only(left: 20, top: 20),
            //   height: 90,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.grey),
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            //   child: Text(
            //     "Write about your community...",
            //     style: GoogleFonts.montserrat(
            //       color: Colors.grey,
            //       fontSize: 12,
            //     ),
            //   ),
            // ),SizedBox(height: 5),
            SizedBox(height: 20),
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
                      value = val;
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
                Navigator.of(context).pushReplacementNamed("family_group_page");
              },
              child: Text(
                "Create Community",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.grey),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
