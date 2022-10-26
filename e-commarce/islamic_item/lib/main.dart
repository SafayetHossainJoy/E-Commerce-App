import 'package:flutter/material.dart';
import 'package:islamic_item/Menus/AboutUs.dart';
import 'package:islamic_item/Screen/SplashScreen.dart';

import 'Menus/ContactUs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: splash_screen(),
      home: About_Us(),
      //home: Contact_Us(),
    );
  }
}
