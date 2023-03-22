// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../globals/globals.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void Validate(String email) {
    bool isvalid = EmailValidator.validate(email);
    print(isvalid);
  }

  bool isEye = false;
  bool isEye2 = false;

  GlobalKey<FormState> globalKey = GlobalKey();
  GlobalKey<FormState> globalKey2 = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: login,
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("login_choice_page");
                setState(() {
                  login == 0;
                });
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.blueGrey,
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            title: Image.asset(
              "assets/images/logo/origa.png",
              scale: 4,
            ),
            bottom: TabBar(
              indicatorWeight: 6,
              indicatorColor: Colors.pink,
              labelColor: Colors.black,
              tabs: [
                Text("Sign Up"),
                Text("Login"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Form(
                key: globalKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                contentPadding: EdgeInsets.only(
                                    left: 20, top: 4, bottom: 15),
                                hintText: "First Name",
                                hintStyle: GoogleFonts.montserrat(
                                    color: greyColor, fontSize: 12),
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
                                contentPadding: EdgeInsets.only(
                                    left: 20, top: 4, bottom: 15),
                                hintText: "Last Name",
                                hintStyle: GoogleFonts.montserrat(
                                    color: greyColor, fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Phone Number",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 10),
                      IntlPhoneField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.only(left: 10, top: 5, bottom: 18),
                          hintText: "Your Phone Number",
                          hintStyle: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text(
                        "Email Address",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val) => !EmailValidator.validate(val!)
                            ? "Enter valid Email"
                            : null,
                        controller: emailController,
                        onSaved: (val) {},
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.only(left: 20, top: 0, bottom: 22),
                          hintText: "example@gmail.com",
                          hintStyle: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Password",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: (isEye2 == false) ? true : false,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.only(left: 10, top: 0, bottom: 18),
                          hintText: "Enter a strong password",
                          suffixIcon: (isEye2 == true)
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      isEye2 = !isEye2;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.eye_slash_fill,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      isEye2 = !isEye2;
                                    });
                                  },
                                  child: Icon(Icons.remove_red_eye),
                                ),
                          hintStyle: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Minimum 8 charcters",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 10),
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          if (globalKey.currentState!.validate()) {
                            Navigator.of(context)
                                .pushReplacementNamed("verify_account");
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
                                spreadRadius: 0,
                                offset: Offset(0, 2),
                              )
                            ],
                            color: Color(0xff001D70),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Form(
                key: globalKey2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "Phone Number",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 10),
                      IntlPhoneField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.only(left: 10, top: 5, bottom: 18),
                          hintText: "Your Phone Number",
                          hintStyle: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            if (val!.isNotEmpty) {
                              return null;
                            } else {
                              return "Enter Password";
                            }
                          } else {
                            return null;
                          }
                          // (val!.isEmpty) ? "Enter Password.." : null;
                        },
                        obscureText: (isEye == false) ? true : false,
                        decoration: InputDecoration(
                          isDense: true,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          contentPadding:
                              EdgeInsets.only(left: 10, top: 0, bottom: 20),
                          hintText: "Enter a your password",
                          suffixIcon: (isEye == true)
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      isEye = !isEye;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.eye_slash_fill,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      isEye = !isEye;
                                    });
                                  },
                                  child: Icon(Icons.remove_red_eye),
                                ),
                          hintStyle: GoogleFonts.montserrat(
                            color: greyColor,
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          if (globalKey2.currentState!.validate()) {
                            Navigator.of(context)
                                .pushReplacementNamed("menu_page");
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
                                spreadRadius: 0,
                                offset: Offset(0, 2),
                              )
                            ],
                            color: Color(0xff001D70),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Login Now",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed("forgot_password_page");
                        },
                        child: Center(
                            child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff001D70),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}