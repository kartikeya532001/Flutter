import 'package:Happiest_Soul/Code/Home.dart';
import 'package:Happiest_Soul/Code/Profile.dart';
import 'package:flutter/material.dart';
import 'Code/Login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Mylogin(),
      "/home": (context) => MyHome(),
      "/profile": (context) => MyProfile(),
      "/signup": (context) => Signup()
    },
  ));
}
