import 'package:apni_dukan_app/Screens/Forget_Password_Screen.dart';
import 'package:apni_dukan_app/Screens/Login_Page_Screen.dart';
import 'package:apni_dukan_app/Screens/Sign_Up_Screen.dart';
import 'package:apni_dukan_app/Screens/Splash_Screen.dart';
import 'package:apni_dukan_app/Screens/Tutorial_Screen.dart';
import 'package:apni_dukan_app/Screens/Verification_Code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerificationCode(),
    );
  }
}
