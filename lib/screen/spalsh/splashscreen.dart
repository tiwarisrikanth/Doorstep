import 'dart:async';

import 'package:doorstep/screen/auth/login_screen.dart';
import 'package:doorstep/screen/constant/color_const.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //       statusBarColor: Color(0xFFdde6e8),
    //       statusBarIconBrightness: Brightness.dark),
    // );
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //       statusBarColor: Colors.white,
    //       statusBarIconBrightness: Brightness.light
    //       //color set to purple or set your own color
    //       ),
    // );
    return Scaffold(
      backgroundColor: colorDarkBlue,
      body: Center(
        child: Image.asset('assets/images/logo2.png'),
      ),
    );
  }
}
